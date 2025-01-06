import win32com.client
import os

# Укажите путь к файлу для печати
FILE_PATH = r"C:\Users\Max\Documents\GitHub\Ozon_upload\create cards for OZON WB XLS\orders\print_test.jpg"

def print_with_photoshop(file_path):
    try:
        # Запуск Photoshop через COM
        app = win32com.client.Dispatch("Photoshop.Application")
        
        # Открываем файл
        doc = app.Open(file_path)
        print("Файл успешно открыт в Photoshop.")
        
        # Отправляем на печать
        doc.PrintOut()
        print("Файл отправлен на печать через Photoshop.")
        
        # Закрываем документ без сохранения
        doc.Close(2)  # 2 = без сохранения изменений
    except Exception as e:
        print(f"Ошибка при печати через Photoshop: {e}")

# Проверяем, существует ли файл
if os.path.exists(FILE_PATH):
    print_with_photoshop(FILE_PATH)
else:
    print(f"Файл '{FILE_PATH}' не найден.")
