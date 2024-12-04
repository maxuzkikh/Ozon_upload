import pandas as pd
from tkinter import Tk, filedialog
import shutil
import openpyxl
import os
import datetime

# 1. Открываем диалоговое окно для выбора исходного Excel файла
root = Tk()
root.withdraw()  # Скрыть главное окно
input_excel_path = filedialog.askopenfilename(
    title="Select the Excel File with 'Артикул продавца'",
    filetypes=(("Excel files", "*.xlsx"), ("All files", "*.*"))
)

if not input_excel_path:
    raise FileNotFoundError("No Excel file selected. Please select a valid Excel file.")

# 2. Путь ко второму Excel файлу, который содержит 'Артикул' и 'место'
barcode_excel_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx"

# 3. Создаем копию исходного файла
# Добавляем текущую метку времени для уникальности имени
copy_excel_path = f"copied_{os.path.basename(input_excel_path)}"

# Копируем файл, чтобы работать с его копией
shutil.copy(input_excel_path, copy_excel_path)

# 4. Читаем второй Excel файл (Data path barcode.xlsx)
df_barcode = pd.read_excel(barcode_excel_path)

# Проверяем структуру файлов
print("Columns in the selected Excel file:")
print(pd.read_excel(copy_excel_path).columns)

print("Columns in the barcode Excel file:")
print(df_barcode.columns)

# Убедимся, что нужные столбцы есть в обоих файлах
if "Артикул продавца" not in pd.read_excel(copy_excel_path).columns:
    raise ValueError("The selected Excel file is missing the 'Артикул продавца' column.")
if "Артикул" not in df_barcode.columns or "место" not in df_barcode.columns:
    raise ValueError("The barcode Excel file must contain the columns: 'Артикул' and 'место'.")

# 5. Используем openpyxl для открытия копии файла
wb = openpyxl.load_workbook(copy_excel_path)
ws = wb.active  # Используем активный лист

# 6. Добавляем новый столбец 'место' в DataFrame для работы с данными
df_selected = pd.read_excel(copy_excel_path, header=None, skiprows=3)
df_selected.columns = ["Лист подбора", "Артикул продавца", "Column3", "Column4", "Column5", "Column6", "Column7", "Column8"]

df_selected["место"] = None  # Создаем новый столбец 'место'

# 7. Обрабатываем строки в столбце 'Артикул продавца'
for index, row in df_selected.iterrows():
    artikul_prodavtsa_value = row['Артикул продавца']
    
    # Пропускаем строки с NaN или некорректным значением (например, 'Фото')
    if pd.isna(artikul_prodavtsa_value) or artikul_prodavtsa_value == "Фото":
        continue
    
    # 8. Ищем совпадение по 'Артикул' в DataFrame второго файла
    matching_row = df_barcode[df_barcode["Артикул"] == artikul_prodavtsa_value]
    
    if not matching_row.empty:
        # 9. Извлекаем значение из столбца 'место'
        mesto_value = matching_row.iloc[0]["место"]
        
        # 10. Добавляем значение в новый столбец 'место' в DataFrame
        df_selected.at[index, 'место'] = mesto_value
    else:
        print(f"No matching Артикул found for: {artikul_prodavtsa_value}")

# 11. Записываем обновленные данные обратно в лист Excel с помощью openpyxl
for index, row in df_selected.iterrows():
    # Обновляем значение в соответствующей ячейке столбца 'место' (столбец 8)
    ws.cell(row=index + 4, column=9, value=row['место'])  # +4 так как начнём с G4

# 12. Сохраняем измененный Excel файл
output_excel_path = f"modified_{os.path.basename(copy_excel_path)}"
wb.save(output_excel_path)

print(f"Modified Excel file saved as {output_excel_path}")
