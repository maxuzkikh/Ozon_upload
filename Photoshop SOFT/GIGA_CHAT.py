import sys
import time
import tkinter as tk
import webbrowser
from tkinter import filedialog, messagebox
import pyautogui
import pyperclip


# ============================ НАСТРОЙКИ ============================

SITE_URL = "https://giga.chat/sessions/01a1d398-e7d9-788f-9c76-ee95c67fe7fb"

CLICK_UPLOAD = (803, 917)        
CLICK_UPLOAD_2 = (829, 824)      
CLICK_PATH_FIELD = (250, 970)    
CLICK_INPUT = (888, 925)         

WAIT_PAGE_LOAD = 5
WAIT_DIALOG = 3                  
WAIT_AFTER_UPLOAD = 9
WAIT_AFTER_INPUT_FOCUS = 1
WAIT_BEFORE_ENTER = 2
START_DELAY = 3

# Значение по умолчанию; реальное берётся из окна выбора
DEFAULT_WAIT_AFTER_EACH_IMAGE = 100

MESSAGE_TEXT = "сделай в стиле вышивки"

# ===================================================================


def ask_delay() -> int | None:
    """Окно выбора задержки между картинками. Возвращает число секунд или None."""
    result = {"value": None}

    root = tk.Tk()
    root.title("Параметры запуска")
    root.attributes("-topmost", True)
    root.resizable(False, False)

    # Центрируем окно
    root.update_idletasks()
    w, h = 360, 150
    x = (root.winfo_screenwidth() - w) // 2
    y = (root.winfo_screenheight() - h) // 2
    root.geometry(f"{w}x{h}+{x}+{y}")

    tk.Label(
        root,
        text="Задержка между картинками (сек):",
        font=("Segoe UI", 10),
    ).pack(pady=(18, 6))

    entry_var = tk.StringVar(value=str(DEFAULT_WAIT_AFTER_EACH_IMAGE))
    entry = tk.Entry(
        root,
        textvariable=entry_var,
        font=("Segoe UI", 12),
        justify="center",
        width=10,
    )
    entry.pack(pady=4)
    entry.select_range(0, tk.END)
    entry.focus_set()

    def on_start(event=None):
        raw = entry_var.get().strip()
        try:
            val = int(raw)
            if val < 0:
                raise ValueError
        except ValueError:
            messagebox.showerror(
                "Ошибка",
                "Введите целое неотрицательное число секунд.",
                parent=root,
            )
            return
        result["value"] = val
        root.destroy()

    def on_cancel(event=None):
        result["value"] = None
        root.destroy()

    btn_frame = tk.Frame(root)
    btn_frame.pack(pady=12)

    tk.Button(
        btn_frame, text="Старт", width=10, command=on_start,
        bg="#4CAF50", fg="white", font=("Segoe UI", 10, "bold"),
    ).pack(side=tk.LEFT, padx=6)

    tk.Button(
        btn_frame, text="Отмена", width=10, command=on_cancel,
        font=("Segoe UI", 10),
    ).pack(side=tk.LEFT, padx=6)

    root.bind("<Return>", on_start)
    root.bind("<Escape>", on_cancel)
    root.protocol("WM_DELETE_WINDOW", on_cancel)

    root.mainloop()
    return result["value"]


def select_images_via_windows_dialog() -> list[str]:
    root = tk.Tk()
    root.withdraw()
    root.attributes("-topmost", True)
    paths = filedialog.askopenfilenames(
        title="Выберите картинки (можно несколько)",
        filetypes=[
            ("Изображения", "*.png *.jpg *.jpeg *.bmp *.gif *.webp"),
            ("Все файлы", "*.*"),
        ],
    )
    root.destroy()
    return list(paths)


def paste_text(text: str) -> None:
    pyperclip.copy(text)
    pyautogui.hotkey("ctrl", "v")


def upload_one_image(image_path: str, index: int, total: int) -> bool:
    """Полный цикл загрузки одной картинки. Возвращает True при успехе."""
    windows_path = image_path.replace('/', '\\')
    print(f"\n[{index}/{total}] Обработка: {windows_path}")

    # Этап 1: клик по кнопке загрузки — старт цикла
    pyautogui.click(*CLICK_UPLOAD)
    time.sleep(WAIT_DIALOG)

    # Этап 2: клик по кнопке выбора файла в диалоге
    pyautogui.click(*CLICK_UPLOAD_2)
    time.sleep(WAIT_DIALOG)

    # Этап 3: вставка пути
    pyautogui.click(*CLICK_PATH_FIELD)
    time.sleep(0.4)
    pyautogui.hotkey("ctrl", "a")
    time.sleep(0.2)

    paste_text(windows_path)
    time.sleep(0.5)
    pyautogui.press("enter")
    time.sleep(WAIT_AFTER_UPLOAD)

    # Этап 4: ввод текста
    pyautogui.click(*CLICK_INPUT)
    time.sleep(WAIT_AFTER_INPUT_FOCUS)

    paste_text(MESSAGE_TEXT)

    # Этап 5: отправка
    time.sleep(WAIT_BEFORE_ENTER)
    pyautogui.press("enter")

    return True


def main() -> int:
    # Этап 0: окно выбора задержки
    wait_after_each = ask_delay()
    if wait_after_each is None:
        print("Запуск отменён пользователем.")
        return 1
    print(f"Задержка между картинками: {wait_after_each} сек")

    # Этап 1: выбор картинок
    image_paths = select_images_via_windows_dialog()
    if not image_paths:
        print("Файлы не выбраны — выходим.")
        return 1

    total = len(image_paths)
    print(f"Выбрано файлов: {total}")

    # Этап 2: открытие сайта (один раз на все картинки)
    webbrowser.open(SITE_URL)
    time.sleep(START_DELAY)
    time.sleep(WAIT_PAGE_LOAD)

    # Этап 3: цикл по картинкам
    success_count = 0
    failed: list[tuple[str, str]] = []

    for i, path in enumerate(image_paths, start=1):
        try:
            ok = upload_one_image(path, i, total)
            if ok:
                success_count += 1
                print(f"    ✅ Готово ({success_count}/{total})")
        except Exception as e:
            print(f"    ❌ Ошибка: {e}")
            failed.append((path, str(e)))

        # Задержка в конце КАЖДОЙ итерации
        print(f"    ⏳ Ожидание {wait_after_each} сек в конце итерации...")
        time.sleep(wait_after_each)

    # Итоги
    print("\n============================ ИТОГИ ============================")
    print(f"Успешно: {success_count} из {total}")
    if failed:
        print("Не удалось обработать:")
        for p, err in failed:
            print(f"  - {p}: {err}")
    print("===============================================================")

    return 0 if not failed else 2


if __name__ == "__main__":
    sys.exit(main())