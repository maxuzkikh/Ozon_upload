import pandas as pd
from tkinter import Tk
from tkinter.filedialog import askopenfilename

# Путь ко второму файлу
file2_path = r"C:\\Users\\Max\\Documents\\GitHub\\Ozon_upload\\barcode\\Data path barcode.xlsx"

# Загружаем данные из второго файла
file2_data = pd.read_excel(file2_path)

# Приводим названия колонок к нижнему регистру для удобства работы
file2_data.columns = file2_data.columns.str.lower()

# Убедимся, что в файле есть нужная колонка 'артикул'
if 'артикул' not in file2_data.columns:
    raise ValueError("Колонка 'Артикул' отсутствует в файле: " + file2_path)

# Проверяем, есть ли колонка 'место'. Если нет, добавляем её пустой
if 'место' not in file2_data.columns:
    file2_data['место'] = None  # Добавляем пустую колонку

# Запускаем окно для выбора первого файла
Tk().withdraw()  # Скрыть основное окно Tkinter
print("Выберите первый файл Excel")
file1_path = askopenfilename(filetypes=[("Excel files", "*.xlsx")])
if not file1_path:
    raise ValueError("Файл не был выбран.")

# Загружаем данные из первого файла
file1_data = pd.read_excel(file1_path)

# Приводим названия колонок к нижнему регистру
file1_data.columns = file1_data.columns.str.lower()

# Убедимся, что в файле есть колонка 'артикул'
if 'артикул' not in file1_data.columns:
    raise ValueError("Колонка 'Артикул' отсутствует в выбранном файле.")

# Добавляем колонку 'место', если её нет
if 'место' not in file1_data.columns:
    file1_data['место'] = None

# Объединяем данные на основе колонки 'артикул'
merged_data = file1_data.merge(file2_data[['артикул', 'место']], on='артикул', how='left', suffixes=('', '_from_file2'))

# Обновляем колонку 'место' в первом файле
file1_data['место'] = merged_data['место_from_file2']

# Сохраняем обновленный файл
output_path = file1_path.replace(".xlsx", "_updated.xlsx")
file1_data.to_excel(output_path, index=False)
print(f"Файл успешно обновлен и сохранен по пути: {output_path}")
