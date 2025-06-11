from PyPDF2 import PdfReader, PdfWriter
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import A4, landscape
from reportlab.lib.colors import black
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
from io import BytesIO
from tkinter import filedialog, Tk, messagebox
import os
import sys
import openpyxl
from openpyxl.utils import column_index_from_string

def register_fonts():
    """Регистрируем доступные шрифты с поддержкой кириллицы"""
    font_paths = [
        'arial.ttf',  # Windows
        '/usr/share/fonts/truetype/msttcorefonts/Arial.ttf',  # Linux
        '/Library/Fonts/Arial.ttf'  # MacOS
    ]
    
    for font_path in font_paths:
        try:
            pdfmetrics.registerFont(TTFont('Arial', font_path))
            return 'Arial'
        except:
            continue
    
    try:
        pdfmetrics.registerFont(TTFont('DejaVuSans', 'DejaVuSans.ttf'))
        return 'DejaVuSans'
    except:
        print("Не удалось загрузить шрифт с поддержкой кириллицы. Используется Helvetica.")
        return 'Helvetica'

def load_excel_data(excel_path, filename_col='A', place_col='I'):
    """Загружает данные из Excel файла"""
    wb = openpyxl.load_workbook(excel_path)
    sheet = wb.active
    data = {}
    
    filename_col_idx = column_index_from_string(filename_col) - 1
    place_col_idx = column_index_from_string(place_col) - 1
    
    for row in sheet.iter_rows(min_row=2, values_only=True):
        if row[filename_col_idx] and row[place_col_idx]:
            filename = os.path.splitext(str(row[filename_col_idx]))[0].strip()
            place_value = str(row[place_col_idx]).strip()
            data[filename] = place_value
    
    return data

def add_text_to_pdf(input_pdf_path, output_pdf_path, text, x, y, font_name='Helvetica', font_size=16):
    """Добавляет текст на каждую страницу PDF с сохранением исходного содержимого"""
    try:
        # Читаем исходный PDF
        original_pdf = PdfReader(input_pdf_path)
        writer = PdfWriter()

        # Создаем временный PDF с текстом (того же размера, что и оригинал)
        for page in original_pdf.pages:
            # Получаем размеры оригинальной страницы
            orig_width = float(page.mediabox[2])
            orig_height = float(page.mediabox[3])
            
            # Создаем подложку с текстом
            packet = BytesIO()
            can = canvas.Canvas(packet, pagesize=(orig_width, orig_height))
            can.setFont(font_name, font_size)
            can.setFillColor(black)
            can.drawString(x, y, text)
            can.save()

            # Накладываем текст на исходную страницу
            packet.seek(0)
            overlay_pdf = PdfReader(packet)
            overlay_page = overlay_pdf.pages[0]
            
            # Объединяем страницы
            page.merge_page(overlay_page)
            writer.add_page(page)

        with open(output_pdf_path, "wb") as output_file:
            writer.write(output_file)
            
        return True
    except Exception as e:
        print(f"Ошибка при обработке файла {input_pdf_path}: {str(e)}")
        return False

def select_pdfs():
    """Открывает диалог выбора файлов"""
    root = Tk()
    root.withdraw()
    files = filedialog.askopenfilenames(
        title="Выберите PDF файлы", 
        filetypes=[("PDF files", "*.pdf")]
    )
    root.destroy()
    return files

if __name__ == "__main__":
    font_name = register_fonts()
    
    excel_path = r"C:\Users\maxim\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx"
    filename_column = 'A'
    place_column = 'I'
    
    try:
        excel_data = load_excel_data(excel_path, filename_column, place_column)
        print(f"Загружено {len(excel_data)} записей из Excel")
    except Exception as e:
        print(f"Ошибка при загрузке Excel файла: {str(e)}")
        sys.exit(1)
    
    pdf_files = select_pdfs()
    if not pdf_files:
        print("Файлы не выбраны. Выход.")
        sys.exit()
    
    base_text = "МЕСТО: "
    x = 50
    y = 50
    font_size = 16
    
    success_count = 0
    
    for pdf_path in pdf_files:
        file_name = os.path.splitext(os.path.basename(pdf_path))[0].strip()
        place_value = excel_data.get(file_name, "")
        
        if not place_value:
            print(f"Внимание: для файла '{file_name}' не найдено значение в таблице")
            place_value = "Н/Д"
        
        full_text = f"{base_text}{place_value}"
        output_path = os.path.join(os.path.dirname(pdf_path), f"modified_{os.path.basename(pdf_path)}")
        
        if add_text_to_pdf(pdf_path, output_path, full_text, x, y, font_name, font_size):
            print(f"Успешно: {output_path} | Текст: '{full_text}'")
            success_count += 1
        else:
            print(f"Ошибка при обработке: {pdf_path}")
    
    print(f"\nОбработка завершена. Успешно обработано: {success_count} из {len(pdf_files)}")
    
    root = Tk()
    root.withdraw()
    messagebox.showinfo(
        "Готово", 
        f"Обработка завершена.\nУспешно: {success_count} из {len(pdf_files)}"
    )
    root.destroy()