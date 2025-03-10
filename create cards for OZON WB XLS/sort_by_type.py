import pandas as pd
from tkinter import Tk
from tkinter.filedialog import askopenfilename
import math
from openpyxl import load_workbook
from openpyxl.styles import PatternFill
import os

# Открываем окно выбора файла
Tk().withdraw()
excel_file_path = askopenfilename(title="Выберите файл Excel", filetypes=[("Excel files", "*.xlsx")])
output_dir = os.path.dirname(excel_file_path)  # Директория для сохранения файлов

# Читаем основной файл
df_main = pd.read_excel(excel_file_path)

# Используем жестко заданный путь к файлу с баркодами
barcode_file_path = "C:/Users/Max/Documents/GitHub/Ozon_upload/barcode/Data path barcode.xlsx"
df_barcode = pd.read_excel(barcode_file_path)

# Проверяем наличие колонки "Тип упорядочить" в df_barcode
if "Тип упорядочить" not in df_barcode.columns:
    raise KeyError(f"Column 'Тип упорядочить' not found in df_barcode. Available columns: {df_barcode.columns.tolist()}")

# Сортируем df_barcode
df_barcode_sorted = df_barcode.sort_values(by="Тип упорядочить")

# Объединяем данные по "Артикул"
if "Артикул" in df_main.columns and "Артикул" in df_barcode_sorted.columns:
    merged_df = pd.merge(df_main, df_barcode_sorted, on="Артикул")
else:
    raise ValueError("Column 'Артикул' not found in one of the files")

# Сортируем объединенный датафрейм
merged_df_sorted = merged_df.sort_values(by=["Тип упорядочить", "Num_Copies"], ascending=[True, False])

# Убираем строки, где Num_Copies == 0
merged_df_sorted = merged_df_sorted[merged_df_sorted['Num_Copies'] != 0]

# Функция для корректировки Num_Copies
def adjust_num_copies(row):
    if row["Тип упорядочить"] in ["1_а4", "6_а4_настройки_60", "3_термобирки"]:
        return math.ceil(row["Num_Copies"] / 2) * 2
    elif row["Тип упорядочить"] == "2_а5":
        return math.ceil(row["Num_Copies"] / 4) * 4
    return row["Num_Copies"]

merged_df_sorted["Num_Copies"] = merged_df_sorted.apply(adjust_num_copies, axis=1)

# Выбираем колонки для сохранения
columns_to_keep = list(df_main.columns) + ["Тип упорядочить"]
columns_to_keep = [col for col in columns_to_keep if col in merged_df_sorted.columns]

# Сохраняем обработанный файл
sorted_excel_file_path = excel_file_path.replace('.xlsx', '_sorted.xlsx')
merged_df_sorted[columns_to_keep].to_excel(sorted_excel_file_path, index=False, engine='openpyxl')

# Загружаем обработанный Excel
wb = load_workbook(sorted_excel_file_path)
sheet = wb.active

fill_colors = ["FFFF99", "99CCFF", "FFCCCC", "CCFFCC", "CCCCFF"]  # Цвета
special_fill_color = "FFA07A"  # Цвет для "6_а4_настройки_60"
color_index = 0
sum_counter = 0
group_rows = []
special_rows = []

# Определяем индексы колонок
num_copies_col = None
type_col = None
for col in range(1, sheet.max_column + 1):
    header = sheet.cell(row=1, column=col).value
    if header == "Num_Copies":
        num_copies_col = col
    elif header == "Тип упорядочить":
        type_col = col

if num_copies_col is None or type_col is None:
    raise ValueError("Required columns not found in the Excel file")

# Окрашиваем группы
for row in range(2, sheet.max_row + 1):
    num_copies = sheet.cell(row=row, column=num_copies_col).value
    current_type = sheet.cell(row=row, column=type_col).value
    
    if current_type == "6_а4_настройки_60":
        special_rows.append(row)
        continue  
    
    if num_copies is not None:
        sum_counter += num_copies
        group_rows.append(row)
    
    if 350 <= sum_counter <= 380:
        fill_color = fill_colors[color_index]
        for r in group_rows:
            for col in range(1, sheet.max_column + 1):
                sheet.cell(row=r, column=col).fill = PatternFill(start_color=fill_color, end_color=fill_color, fill_type="solid")
        sum_counter = 0
        group_rows = []
        color_index = (color_index + 1) % len(fill_colors)

for r in special_rows:
    for col in range(1, sheet.max_column + 1):
        sheet.cell(row=r, column=col).fill = PatternFill(start_color=special_fill_color, end_color=special_fill_color, fill_type="solid")

wb.save(sorted_excel_file_path)

# Создаем папку для экспорта, если её нет
os.makedirs(output_dir, exist_ok=True)

def get_color(cell):
    """Функция для получения цвета ячейки"""
    fill = cell.fill
    return fill.start_color.rgb if fill.fill_type == "solid" else None

# Определяем цвета и строки
color_groups = {}
for row in range(2, sheet.max_row + 1):
    color = get_color(sheet.cell(row=row, column=1))
    if color:
        if color not in color_groups:
            color_groups[color] = []
        color_groups[color].append(row)

# Читаем DataFrame
df_sorted = pd.read_excel(sorted_excel_file_path, engine='openpyxl')

# Экспортируем группы
for idx, (color, rows) in enumerate(color_groups.items(), start=1):
    df_group = df_sorted.iloc[[r - 2 for r in rows]]
    file_path = os.path.join(output_dir, f"p{idx}.xlsx")
    df_group.to_excel(file_path, index=False, engine='openpyxl')
    print(f"Группа {idx} ({color}) экспортирована в {file_path}")

print("Все цветовые группы экспортированы!")
