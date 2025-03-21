import pandas as pd
from tkinter import Tk, filedialog
import os

# Функция для выбора файлов
def select_files():
    root = Tk()
    root.withdraw()
    file_paths = filedialog.askopenfilenames(title="Выберите два файла Excel", filetypes=[("Excel files", "*.xlsx;*.xls")])
    return file_paths

# Выбираем файлы
files = select_files()
if len(files) != 2:
    print("Выберите ровно два файла!")
else:
    # Загружаем файлы в DataFrame
    df1 = pd.read_excel(files[0])
    df2 = pd.read_excel(files[1])
    
    # Объединяем данные
    df = pd.concat([df1, df2])
    
    # Заполняем пропущенные значения нулями
    df.fillna(0, inplace=True)
    
    # Определяем столбцы для суммирования (все кроме 'Артикул')
    sum_columns = [col for col in df.columns if col != "Артикул"]
    
    # Преобразуем данные в числовой формат, если возможно
    for col in sum_columns:
        df[col] = pd.to_numeric(df[col], errors='coerce').fillna(0)
    
    # Группируем по 'Артикул' и суммируем числовые данные
    result_df = df.groupby("Артикул", as_index=False)[sum_columns].sum()
    
    # Получаем путь к папке исходного файла
    output_dir = os.path.dirname(files[0])
    output_file = os.path.join(output_dir, "Результат.xlsx")
    
    # Сохраняем результат в новый файл
    result_df.to_excel(output_file, index=False)
    print(f"Файл сохранен: {output_file}")