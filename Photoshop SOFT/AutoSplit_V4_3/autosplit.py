# -*- coding: utf-8 -*-
"""Разделение изолированных рисунков на PNG с сохранением альфа-канала.
Python 3.10+, Pillow, OpenCV, NumPy.
"""
import argparse
import json
import shutil
import sys
from pathlib import Path

try:
    import cv2
    import numpy as np
    from PIL import Image
except ImportError as exc:
    print('Не найдены библиотеки: ' + str(exc))
    print('Установите зависимости: py -3 -m pip install -r requirements.txt')
    sys.exit(2)


def make_jsx(width, height, names):
    # ASCII-only script text for greater compatibility with ExtendScript.
    names_json = json.dumps(names, ensure_ascii=True)
    return r'''#target photoshop
app.bringToFront();
(function () {
    var units = app.preferences.rulerUnits;
    app.preferences.rulerUnits = Units.PIXELS;
    var target = null, src = null;
    try {
        var root = File($.fileName).parent;
        var pieces = Folder(root.fsName + '/layers_full_canvas');
        if (!pieces.exists) throw Error('Missing folder: layers_full_canvas');
        var names = __NAMES__;
        var w = __WIDTH__, h = __HEIGHT__;
        if (app.documents.length > 0 &&
            Math.round(app.activeDocument.width.as('px')) === w &&
            Math.round(app.activeDocument.height.as('px')) === h) {
            target = app.activeDocument;
        } else {
            target = app.documents.add(w, h, 72, 'AutoSplit layers', NewDocumentMode.RGB, DocumentFill.TRANSPARENT);
        }
        var group = target.layerSets.add();
        group.name = 'AutoSplit - ' + names.length + ' objects';
        for (var i = 0; i < names.length; i++) {
            var part = File(pieces.fsName + '/' + names[i] + '.png');
            if (!part.exists) throw Error('Missing PNG: ' + part.fsName);
            src = app.open(part);
            // Each PNG is original canvas size, so duplication preserves its location.
            src.activeLayer.duplicate(target, ElementPlacement.PLACEATBEGINNING);
            src.close(SaveOptions.DONOTSAVECHANGES);
            src = null;
            app.activeDocument = target;
            var added = target.activeLayer;
            added.name = names[i];
            added.move(group, ElementPlacement.INSIDE);
        }
        app.activeDocument = target;
        alert('AutoSplit: ' + names.length + ' objects imported as layers.');
    } catch (e) {
        try { if (src) src.close(SaveOptions.DONOTSAVECHANGES); } catch (_) {}
        alert('AutoSplit import error: ' + e.message + ' (line ' + e.line + ')');
    } finally {
        app.preferences.rulerUnits = units;
    }
})();
'''.replace('__NAMES__', names_json).replace('__WIDTH__', str(width)).replace('__HEIGHT__', str(height))


def split_image(input_path, output=None, gap=None, alpha_threshold=12, min_area=None):
    path = Path(input_path).expanduser().resolve()
    if not path.is_file():
        raise ValueError('Файл не найден: ' + str(path))
    img = Image.open(path)
    if img.mode not in ('RGBA', 'LA') and 'transparency' not in img.info:
        raise ValueError('Нужен PNG с прозрачностью (альфа-каналом).')
    rgba = np.array(img.convert('RGBA'))
    h, w = rgba.shape[:2]
    alpha = rgba[:, :, 3]
    if alpha.max() == 0:
        raise ValueError('Изображение полностью прозрачное.')
    # Use a very low threshold to keep anti-aliased edges; grouping uses >12.
    solid = (alpha > alpha_threshold).astype(np.uint8)
    if not solid.any():
        raise ValueError('Нет достаточно непрозрачных пикселей.')
    if gap is None:
        gap = max(2, min(16, round(min(w, h) * 8 / 1521)))
    if gap < 0 or gap > 80:
        raise ValueError('Параметр gap должен быть от 0 до 80 пикселей.')
    kernel = cv2.getStructuringElement(cv2.MORPH_ELLIPSE, (2 * gap + 1, 2 * gap + 1))
    dilated = cv2.dilate(solid, kernel) if gap else solid
    count, labels, stats, centers = cv2.connectedComponentsWithStats(dilated, connectivity=8)
    candidates = [i for i in range(1, count)]
    if not candidates:
        raise ValueError('Не найдено объектов.')
    biggest = max(int(stats[i, cv2.CC_STAT_AREA]) for i in candidates)
    if min_area is None:
        min_area = max(30, round(w * h * 0.003), round(biggest * 0.02))
    primary = [i for i in candidates if stats[i, cv2.CC_STAT_AREA] >= min_area]
    if not primary:
        primary = [max(candidates, key=lambda i: stats[i, cv2.CC_STAT_AREA])]

    # Sort roughly in reading order, grouping by horizontal rows.
    primary.sort(key=lambda i: centers[i][1])
    ordered_rows = []
    for i in primary:
        cy = float(centers[i][1]); ht = float(stats[i, cv2.CC_STAT_HEIGHT])
        tolerance = max(20, min(ht, 200) * 0.47)
        matching = next((row for row in ordered_rows if abs(row['cy'] - cy) < tolerance), None)
        if matching is None:
            ordered_rows.append({'cy': cy, 'ids': [i]})
        else:
            matching['ids'].append(i)
            matching['cy'] = sum(float(centers[j][1]) for j in matching['ids']) / len(matching['ids'])
    ordered_rows.sort(key=lambda row: row['cy'])
    primary = [i for row in ordered_rows for i in sorted(row['ids'], key=lambda j: centers[j][0])]

    # Find closest main object for tiny separate sparkle / decorative islands.
    def box_distance(a, b):
        x, y = centers[a]
        bx, by, bw, bh = [int(v) for v in stats[b, :4]]
        dx = max(bx - x, 0, x - (bx + bw))
        dy = max(by - y, 0, y - (by + bh))
        return dx*dx + dy*dy

    owner_ids = {}
    for i in candidates:
        owner_ids[i] = i if i in primary else min(primary, key=lambda j: box_distance(i, j))

    out = Path(output).expanduser().resolve() if output else path.with_name(path.stem + '_AutoSplit')
    if out.exists() and any(out.iterdir()):
        # Refuse to overwrite other files or results from another image.
        base = out
        suffix = 2
        while out.exists():
            out = Path(str(base) + '_' + str(suffix))
            suffix += 1
    full = out / 'layers_full_canvas'
    crop = out / 'objects_cropped'
    full.mkdir(parents=True, exist_ok=True)
    crop.mkdir(parents=True, exist_ok=True)
    layer_map = np.zeros(count, dtype=np.uint16 if len(primary) <= 65535 else np.int32)
    for i, p in enumerate(primary, start=1):
        for component, owner in owner_ids.items():
            if owner == p:
                layer_map[component] = i
    assigned = layer_map[labels]
    names = []
    restored = np.zeros_like(rgba)
    # Preserve classified pixels; only extend ownership onto antialiased edges.
    owners = assigned.copy()
    radius = 3
    kernel_edge = cv2.getStructuringElement(cv2.MORPH_ELLIPSE, (2*radius+1, 2*radius+1))
    for i in range(1, len(primary) + 1):
        m = (assigned == i).astype(np.uint8)
        edge_mask = cv2.dilate(m, kernel_edge) > 0
        owners[edge_mask & (owners == 0)] = i
    # Ensure all alpha>0 pixels belong to an object, even detached 1px specks.
    missing = (alpha > 0) & (owners == 0)
    if missing.any():
        # Sparse orphan pixels: nearest bounding box center. Avoid huge pixel*object costs.
        yy, xx = np.nonzero(missing)
        main_centers = np.array([centers[j] for j in primary])
        for start in range(0, len(xx), 50000):
            x = xx[start:start+50000, None]
            y = yy[start:start+50000, None]
            distances = (x-main_centers[None,:,0])**2+(y-main_centers[None,:,1])**2
            owners[yy[start:start+50000], xx[start:start+50000]] = np.argmin(distances,axis=1)+1
    names = ['Object_%02d' % i for i in range(1, len(primary)+1)]
    for i, name in enumerate(names, start=1):
        mask = (owners == i) & (alpha > 0)
        part = np.zeros_like(rgba)
        part[mask] = rgba[mask]
        restored[mask] = rgba[mask]
        Image.fromarray(part, 'RGBA').save(full / (name + '.png'), optimize=True)
        ys, xs = np.nonzero(mask)
        if len(xs):
            x1, x2 = max(0, int(xs.min())-3), min(w, int(xs.max())+4)
            y1, y2 = max(0, int(ys.min())-3), min(h, int(ys.max())+4)
            Image.fromarray(part[y1:y2, x1:x2], 'RGBA').save(crop / (name + '.png'), optimize=True)
    # Transparent pixels may carry arbitrary hidden RGB values. They are not visible
    # and are intentionally zeroed in the object PNGs. Validate the alpha channel
    # everywhere and RGB strictly where alpha > 0 (lossless visible image).
    alpha_equal = np.array_equal(restored[:, :, 3], rgba[:, :, 3])
    visible = alpha > 0
    rgb_equal = np.array_equal(restored[:, :, :3][visible], rgba[:, :, :3][visible])
    if not (alpha_equal and rgb_equal):
        lost = int(np.count_nonzero(visible & (restored[:, :, 3] != alpha)))
        changed_rgb = int(np.count_nonzero(visible & np.any(restored[:, :, :3] != rgba[:, :, :3], axis=2)))
        raise RuntimeError('Не совпали видимые пиксели: alpha=%s, RGB=%s. Не используйте результат.' % (lost, changed_rgb))
    importer = Path(__file__).resolve().parent / 'IMPORT_TO_PHOTOSHOP_2026.jsx'
    if importer.is_file():
        shutil.copyfile(str(importer), str(out / 'IMPORT_TO_PHOTOSHOP_2026.jsx'))
    else:
        (out / 'IMPORT_TO_PHOTOSHOP_2026.jsx').write_text(make_jsx(w, h, names), encoding='utf-8-sig')
    (out / 'INFO.txt').write_text(
        'AutoSplit: %s объектов. Размер исходного холста: %s x %s.\n'
        'layers_full_canvas: PNG полного размера для Photoshop.\n'
        'objects_cropped: PNG, обрезанные по рамке каждого объекта.\n'
        'IMPORT_TO_PHOTOSHOP_2026.jsx: Файл > Сценарии > Обзор в Photoshop.\n'
        'Все исходные RGBA-пиксели сохранены и проверены.\n'
        'Если соседние картинки слились, повторите с меньшим радиусом gap.\n'
        'Если рисунок разделился на части, увеличьте gap.\n' % (len(primary), w, h),
        encoding='utf-8-sig'
    )
    return out, len(primary)


def main():
    p = argparse.ArgumentParser(description='AutoSplit: PNG с прозрачностью -> отдельные PNG + Photoshop JSX')
    p.add_argument('source', nargs='?', help='Путь к PNG; если не указан, откроется окно выбора файла')
    p.add_argument('--gap', type=int, default=None, help='Радиус объединения близких фрагментов (обычно 5-10)')
    p.add_argument('--min-area', type=int, default=None, help='Минимальная площадь основного объекта в пикселях')
    args = p.parse_args()
    source = args.source
    if not source:
        try:
            from tkinter import Tk, filedialog, messagebox
            tk = Tk(); tk.withdraw(); tk.attributes('-topmost', True)
            source = filedialog.askopenfilename(title='Выберите PNG с прозрачным фоном', filetypes=[('PNG images','*.png')])
            tk.destroy()
        except Exception as e:
            print('Ошибка окна выбора файла:', e)
            return 2
    if not source:
        print('Файл не выбран.')
        return 0
    try:
        out, n = split_image(source, gap=args.gap, min_area=args.min_area)
        print('ГОТОВО: найдено объектов:', n)
        print('Результат:', out)
        print('Для Photoshop запустите IMPORT_TO_PHOTOSHOP_2026.jsx и выберите папку layers_full_canvas.')
        try:
            import os
            os.startfile(str(out))  # Windows only
        except (AttributeError, OSError):
            pass
    except Exception as e:
        print('ОШИБКА:', str(e))
        return 1
    return 0


if __name__ == '__main__':
    sys.exit(main())
