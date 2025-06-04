import pandas as pd
from tkinter import Tk
from tkinter.filedialog import askopenfilename

# Путь ко второму файлу
file2_path = r"C:\\Users\\maxim\\Documents\\GitHub\\Ozon_upload\\barcode\\SKU.xlsx"

try:
    # Загружаем данные из второго файла
    file2_data = pd.read_excel(file2_path, dtype=str)  # Обязательно указать dtype=str

    # Убедимся, что в файле есть нужная колонка 'Артикул'
    if 'Артикул' not in file2_data.columns:
        raise ValueError("Колонка 'Артикул' отсутствует в файле: " + file2_path)

    # Проверяем, есть ли колонка 'SKU' во втором файле
    if 'SKU' not in file2_data.columns:
        raise ValueError("Колонка 'SKU' не найдена в файле: " + file2_path)

    # Запускаем окно для выбора первого файла
    Tk().withdraw()
    print("Выберите первый файл Excel")
    file1_path = askopenfilename(filetypes=[("Excel files", "*.xlsx")])
    if not file1_path:
        raise ValueError("Файл не был выбран.")

    # Загружаем данные из первого файла
    file1_data = pd.read_excel(file1_path, dtype=str)  # Обязательно указать dtype=str

    # Убедимся, что в файле есть колонка 'Артикул'
    if 'Артикул' not in file1_data.columns:
        raise ValueError("Колонка 'Артикул' отсутствует в выбранном файле.")

    # Объединяем данные на основе колонки 'Артикул'
    merged_data = file1_data.merge(file2_data[['Артикул', 'SKU']], on='Артикул', how='left', suffixes=('', '_from_file2'))

    # Обновляем колонку 'SKU' в первом файле
    file1_data['SKU'] = merged_data['SKU_from_file2'].fillna('Не указано')  # Заполняем пропущенные значения

    # Сохраняем обновленный файл
    output_path = file1_path.replace(".xlsx", "_updated.xlsx")
    file1_data.to_excel(output_path, index=False)
    print(f"Файл успешно обновлен и сохранен по пути: {output_path}")

except ValueError as e:
    print(f"Ошибка: {e}")

except Exception as e: # Обработка других возможных ошибок
    print(f"Ошибка: {e}")