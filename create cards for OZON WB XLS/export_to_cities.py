import pandas as pd
import tkinter as tk
from tkinter import filedialog
import os

# Открытие окна выбора файла
root = tk.Tk()
root.withdraw()
file_path = filedialog.askopenfilename(title="Выберите Excel-файл", filetypes=[("Excel Files", "*.xlsx;*.xls")])

if not file_path:
    print("Файл не выбран.")
else:
    # Читаем данные, заголовки на первой строке
    df = pd.read_excel(file_path, header=0)

    # Определяем путь для сохранения файлов
    base_dir = os.path.dirname(file_path)
    save_dir = os.path.join(base_dir, "Поставка по городам")

    # Создаем папку, если ее нет
    os.makedirs(save_dir, exist_ok=True)

    # Перебираем все столбцы, начиная со второго (первый - это "артикул")
    for idx, col_name in enumerate(df.columns[1:], start=1):
        new_df = df[[df.columns[0], col_name]].copy()  # Берем первый и текущий столбец

        # Добавляем пустую колонку "имя (необязательно)"
        new_df.insert(1, "имя (необязательно)", "")

        # Переименовываем заголовки
        new_df.columns = ["артикул", "имя (необязательно)", "количество"]

        # Удаляем строки, где количество равно 0 или пусто
        new_df = new_df[new_df["количество"].notna() & (new_df["количество"] != 0)]

        # Формируем путь для сохранения файла с порядковым номером
        save_path = os.path.join(save_dir, f"{idx} {col_name}.xlsx")

        # Сохраняем результат
        new_df.to_excel(save_path, index=False)
        print(f"Файл сохранен: {save_path}")

    print(f"Обработка завершена. Все файлы сохранены в папке: {save_dir}")
