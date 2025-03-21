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
    
    # Определяем путь для сохранения
    save_dir = os.path.dirname(file_path)
    
    # Перебираем столбцы начиная со второго
    for col_name in df.columns[1:]:
        new_df = df[[df.columns[0], col_name]]  # Берем первый и текущий столбец
        
        # Удаляем строки, где значение в текущем столбце или в "Артикул" равно 0
        new_df = new_df[(new_df.iloc[:, 0] != 0) & (new_df.iloc[:, 1] != 0)]
        
        # Переименовываем второй столбец в "Количество"
        new_df.columns = [df.columns[0], "Количество"]
        
        save_path = os.path.join(save_dir, f"{col_name}.xlsx")
        new_df.to_excel(save_path, index=False)
        print(f"Файл сохранен: {save_path}")
    
    print("Обработка завершена.")