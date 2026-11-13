#target photoshop
app.bringToFront();

if (app.documents.length > 0) {
    var doc = app.activeDocument;
    
    // Проверяем, есть ли выделение
    if (doc.selection.bounds == null) {
        alert("Сначала выделите объект инструментом 'Прямоугольная область' (M), затем запустите скрипт.");
    } else {
        doc.suspendHistory("Добавление размеров", "drawSimpleDimensions(doc)");
    }
} else {
    alert("Откройте изображение!");
}

function drawSimpleDimensions(doc) {
    var bounds = doc.selection.bounds;
    var startX = bounds[0].as("px");
    var startY = bounds[1].as("px");
    var endX = bounds[2].as("px");
    var endY = bounds[3].as("px");
    
    var widthPx = endX - startX;
    var heightPx = endY - startY;
    
    // Перевод в см (на основе 300 ppi, как у вас на скрине)
    var res = doc.resolution; 
    var wText = (widthPx / res * 2.54).toFixed(1) + " см";
    var hText = (heightPx / res * 2.54).toFixed(1) + " см";
    
    var indent = 30; // Отступ от объекта
    var lineColor = new SolidColor();
    lineColor.rgb.hexValue = "E65028"; // Оранжевый цвет как на референсе
    
    var group = doc.layerSets.add();
    group.name = "Авто-размеры";
    
    // --- 1. РИСУЕМ ШИРИНУ (Снизу) ---
    var yLine = endY + indent;
    
    // Линия
    drawLine(startX, yLine, endX, yLine, lineColor, group);
    
    // Текст
    var textLayerW = group.artLayers.add();
    textLayerW.kind = LayerKind.TEXT;
    textLayerW.textItem.contents = wText;
    textLayerW.textItem.font = "Arial-BoldMT";
    textLayerW.textItem.size = 24;
    textLayerW.textItem.color = lineColor;
    // Ставим текст по центру линии (чуть выше неё)
    textLayerW.textItem.position = [startX + (widthPx/2) - 20, yLine - 20];

    // --- 2. РИСУЕМ ВЫСОТУ (Справа) ---
    var xLine = endX + indent;
    
    // Линия
    drawLine(xLine, startY, xLine, endY, lineColor, group);
    
    // Текст
    var textLayerH = group.artLayers.add();
    textLayerH.kind = LayerKind.TEXT;
    textLayerH.textItem.contents = hText;
    textLayerH.textItem.font = "Arial-BoldMT";
    textLayerH.textItem.size = 24;
    textLayerH.textItem.color = lineColor;
    // Ставим текст по центру линии
    textLayerH.textItem.position = [xLine + 10, startY + (heightPx/2) + 20];
    
    // Поворачиваем текст на 90 градусов
    textLayerH.rotate(90);

    doc.selection.deselect();
}

// Простая функция для рисования линии
function drawLine(x1, y1, x2, y2, color, group) {
    var doc = app.activeDocument;
    var lineLayer = group.artLayers.add();
    
    // Используем простой метод выделения и заливки (работает везде)
    doc.activeLayer = lineLayer;
    
    // Выделяем прямоугольник для линии (толщина 3 пикселя)
    var thickness = 3;
    if (y1 === y2) {
        // Горизонтальная
        doc.selection.select([[x1, y1 - thickness], [x2, y1 + thickness], [x2, y2 + thickness], [x1, y1 + thickness]]);
    } else {
        // Вертикальная
        doc.selection.select([[x1 - thickness, y1], [x1 + thickness, y1], [x2 + thickness, y2], [x1 - thickness, y2]]);
    }
    
    doc.selection.fill(color);
    doc.selection.deselect();
}