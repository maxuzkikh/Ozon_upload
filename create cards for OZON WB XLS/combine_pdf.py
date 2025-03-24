import os
import pandas as pd
import tkinter as tk
from tkinter import filedialog
from PyPDF2 import PdfMerger, PdfReader, PdfWriter
import io

# Выбор Excel-файла
root = tk.Tk()
root.withdraw()
excel_file_path = filedialog.askopenfilename(
    title="Выберите Excel-файл со списком (p1.xlsx)",
    filetypes=[("Excel Files", "*.xlsx")]
)
if not excel_file_path:
    raise Exception("Excel-файл не выбран!")

# Загрузка таблиц
df_list = pd.read_excel(excel_file_path)
barcode_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx"
df_paths = pd.read_excel(barcode_path)

# Объединение по "Артикул"
df_merged = pd.merge(df_list, df_paths[['Артикул', 'Local_PDF_Path_Column_Name']], on='Артикул', how='left')

# Проверка пропущенных путей
missing = df_merged[df_merged['Local_PDF_Path_Column_Name'].isna()]
if not missing.empty:
    print("⚠️ Внимание! Не найден путь к PDF для артикулов:")
    print(missing['Артикул'].tolist())

# Итоговый PDF
merger = PdfMerger()

for _, row in df_merged.iterrows():
    pdf_path = row['Local_PDF_Path_Column_Name']
    num_copies = int(row['Num_Copies'])

    if not os.path.isfile(pdf_path):
        print(f"❌ Файл не найден: {pdf_path}")
        continue

    try:
        reader = PdfReader(pdf_path)
        if len(reader.pages) == 0:
            print(f"⚠️ Пустой PDF: {pdf_path}")
            continue
        first_page = reader.pages[0]

        for _ in range(num_copies):
            # Копируем страницу напрямую во временный PDF в памяти
            writer = PdfWriter()
            writer.add_page(first_page)

            # Записываем в память (вместо temp файла)
            buffer = io.BytesIO()
            writer.write(buffer)
            buffer.seek(0)
            merger.append(buffer)

    except Exception as e:
        print(f"‼️ Ошибка при обработке {pdf_path}: {e}")

# Сохраняем под именем Excel-файла + _штрихкод_печать.pdf
base_name = os.path.splitext(os.path.basename(excel_file_path))[0]
output_pdf_name = f"{base_name}_штрихкод_печать.pdf"
output_pdf = os.path.join(os.path.dirname(excel_file_path), output_pdf_name)

merger.write(output_pdf)
merger.close()

print(f"✅ Итоговый PDF сохранён:\n{output_pdf}")
