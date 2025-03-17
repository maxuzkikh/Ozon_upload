import pandas as pd
import os
from tkinter import Tk
from tkinter.filedialog import askopenfilename
import numpy as np

# Открываем окно выбора файла
Tk().withdraw()  # Скрываем основное окно Tkinter
file_path = askopenfilename(title="Выберите файл с таблицей 'было'", filetypes=[("Excel files", "*.xlsx;*.xls")])

if not file_path:
    print("Файл не выбран. Выход из программы.")
    exit()

# Загружаем данные
data = pd.read_excel(file_path, sheet_name=0)  # Читаем первый лист
data.columns = ["артикул", "кластер", "количество", "место"]  # Задаем заголовки

# Загружаем данные из "Data path barcode.xlsx"
barcode_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx"
barcode_data = pd.read_excel(barcode_path, sheet_name=0)

# Приводим названия колонок к нижнему регистру
barcode_data.columns = barcode_data.columns.str.lower()
data.columns = data.columns.str.lower()

# Проверяем, есть ли нужные колонки в файле с баркодами
if "артикул" in barcode_data.columns and "тип упорядочить" in barcode_data.columns:
    barcode_data = barcode_data[["артикул", "тип упорядочить"]]  # Оставляем нужные колонки
else:
    print("Ошибка: в файле с баркодами нет колонок 'Артикул' и 'Тип упорядочить'")
    exit()

# Создаем сводную таблицу по кластерам (городам)
pivot_table = data.pivot_table(index=["артикул"], 
                               columns="кластер", 
                               values="количество", 
                               aggfunc="sum").reset_index()

# Заполняем NaN нулями, конвертируем только числовые колонки
for col in pivot_table.columns[1:]:  # Пропускаем "артикул"
    pivot_table[col] = pivot_table[col].fillna(0).astype(int)

# Добавляем столбец "всего" (если он не дублируется)
if "всего" not in pivot_table.columns:
    pivot_table["всего"] = pivot_table.iloc[:, 1:].sum(axis=1)

# Добавляем колонку "место"
places = data.groupby("артикул")["место"].apply(lambda x: ", ".join(x.unique())).reset_index()
final_table = pivot_table.merge(places, on="артикул")

# Добавляем колонку "Тип упорядочить" из файла с баркодами
final_table = final_table.merge(barcode_data, on="артикул", how="left")

# Заполняем NaN в "Тип упорядочить" пустыми строками, чтобы сортировка не ломалась
final_table["тип упорядочить"] = final_table["тип упорядочить"].fillna("")

# Рассчитываем "Num_Copies":
def round_up(value, multiple):
    return int(np.ceil(value / multiple) * multiple)

final_table["Num_Copies"] = final_table.apply(lambda row: round_up(row["всего"], 2) 
                                                if row["тип упорядочить"].startswith("1_а4") or row["тип упорядочить"].startswith("6_а4_настройки_60") 
                                                else round_up(row["всего"], 4) 
                                                if row["тип упорядочить"].startswith("2_а5") 
                                                else row["всего"], axis=1)

# Исправляем расчет "осталось" как разницу между "Num_Copies" и "всего"
final_table["осталось"] = final_table["Num_Copies"] - final_table["всего"]

# Распределяем "осталось" равномерно по городам с наименьшим значением, включая 0
city_columns = [col for col in pivot_table.columns if col not in ["артикул", "всего"]]
final_table = final_table.sort_values(by=["тип упорядочить", "всего"], ascending=[True, False])

for index, row in final_table.iterrows():
    remaining = row["осталось"]
    target_cities = sorted(city_columns, key=lambda city: row[city])
    
    if remaining > 0:
        allocation_per_city = remaining // len(target_cities)
        extra_allocation = remaining % len(target_cities)
        
        for city in target_cities:
            final_table.at[index, city] += allocation_per_city
        
        # Добавляем оставшиеся единицы в первые города из списка
        for i in range(extra_allocation):
            final_table.at[index, target_cities[i]] += 1
        
        final_table.at[index, "осталось"] = 0

# Переставляем колонки в нужном порядке
columns_order = ["артикул"] + city_columns + ["Num_Copies", "осталось", "место", "тип упорядочить"]
final_table = final_table[columns_order]

# Формируем путь для сохранения
new_file_path = os.path.join(os.path.dirname(file_path), os.path.splitext(os.path.basename(file_path))[0] + "_по_городам.xlsx")

# Сохраняем в тот же каталог
final_table.to_excel(new_file_path, sheet_name="по_городам", index=False)

print(f"Готово! Файл сохранен в: {new_file_path}")
