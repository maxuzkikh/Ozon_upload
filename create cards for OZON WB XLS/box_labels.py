from reportlab.lib.pagesizes import mm
from reportlab.pdfgen import canvas
from reportlab.lib.units import mm
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
import os
import tkinter as tk
from tkinter import filedialog
import sys

# Настройка для поддержки русского языка в консоли Windows
if sys.platform == "win32":
    import ctypes
    ctypes.windll.kernel32.SetConsoleOutputCP(65001)

# Регистрация шрифта Arial
arial_path = "C:/Windows/Fonts/arial.ttf"
pdfmetrics.registerFont(TTFont("Arial", arial_path))

# Открываем окно выбора папки
root = tk.Tk()
root.withdraw()  # Скрыть основное окно

# Спрашиваем данные
num_boxes = int(input("Сколько коробок? "))
print_date = input("Введите дату печати (например, 25.04.2025): ")

print("Выберите папку для сохранения PDF-файла...")
save_path = filedialog.askdirectory(title="Выберите папку для сохранения PDF")
if not save_path:
    print("Папка не выбрана. Выход из программы.")
    exit()

filename = os.path.join(save_path, "labels.pdf")

# Настройки размера страницы
page_width = 58 * mm
page_height = 40 * mm

# Создаем PDF
c = canvas.Canvas(filename, pagesize=(page_width, page_height))

# Функция для рисования текста

def draw_text(c, box_number, date_text):
    label_text = f"Коробка {box_number}"
    max_label_font = 100
    max_date_font = 100

    # Вычисляем максимальный размер шрифта для "Коробка N"
    while True:
        label_width = c.stringWidth(label_text, "Arial", max_label_font)
        label_height = max_label_font
        if label_width <= page_width * 0.9 and label_height <= page_height * 0.45:
            break
        max_label_font -= 1

    # Вычисляем максимальный размер шрифта для даты
    while True:
        date_width = c.stringWidth(date_text, "Arial", max_date_font)
        date_height = max_date_font
        if date_width <= page_width * 0.9 and date_height <= page_height * 0.45:
            break
        max_date_font -= 1

    x_center = page_width / 2
    y_center = page_height / 2

    # Рисуем "Коробка N"
    c.setFont("Arial", max_label_font)
    c.drawCentredString(x_center, y_center + max_label_font * 0.6, label_text)

    # Рисуем дату
    c.setFont("Arial", max_date_font)
    c.drawCentredString(x_center, y_center - max_date_font * 1.1, date_text)

# Генерация страниц
for i in range(1, num_boxes + 1):
    draw_text(c, i, print_date)
    c.showPage()

c.save()

print(f"PDF-файл '{filename}' успешно создан!")