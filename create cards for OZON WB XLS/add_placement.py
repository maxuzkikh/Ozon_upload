import win32com.client
import pandas as pd
from pathlib import Path
import ctypes
import time
import pyautogui
import pyperclip  # Убедитесь, что библиотека pyperclip установлена
import keyboard

def bring_window_to_front(window_title):
    """Bring a window to the front using its title."""
    hwnd = ctypes.windll.user32.FindWindowW(None, window_title)
    if hwnd == 0:
        print(f"Window with title '{window_title}' not found.")
        return False

    ctypes.windll.user32.SetForegroundWindow(hwnd)
    time.sleep(0.3)  # Allow some time for the window to activate
    return True

def save_file_with_pyautogui(full_path):
    """Сохранение файла с использованием буфера обмена."""
    time.sleep(1)  # Дать время Photoshop подготовиться
    pyautogui.hotkey('ctrl', 'shift', 's')  # Открыть окно "Сохранить как"
    pyperclip.copy(full_path)  # Скопировать полный путь в буфер обмена
    time.sleep(1)  # Подождать, чтобы текст успел скопироваться
    pyautogui.hotkey('ctrl', 'v')  # Вставить путь из буфера обмена
    time.sleep(1)  # Pause to let you switch to the desired window
    pyautogui.press('enter')  # Подтвердить путь
    time.sleep(1)

    pyautogui.press('tab')  # Simulate Tab key press
    time.sleep(1)  # Подтвердить формат файла
    pyautogui.press('enter')  # Подтвердить путь
    time.sleep(1)  # Подтвердить формат файла
    pyautogui.press('enter')  # Подтвердить любые дополнительные окна
    time.sleep(1)  # Подтвердить формат файла
    pyautogui.press('enter')  # Подтвердить любые дополнительные окна
    time.sleep(1)  # Подтвердить формат файла
    pyautogui.press('enter')  # Подтвердить любые дополнительные окна
    time.sleep(1)  # Подтвердить формат файла
    pyautogui.press('enter')  # Подтвердить любые дополнительные окна
    print(f"Файл успешно сохранён в {full_path}.")
    time.sleep(1)

# Define file paths
excel_file_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx"

# Define column names
pdf_path_column = "Local_PDF_Path_Column_Name"  # Replace with actual column name
place_column = "место"
action_column = "Бренд"  # The column to check for actions

# Load the Excel data
data = pd.read_excel(excel_file_path)

# Validate columns
if pdf_path_column not in data.columns or place_column not in data.columns or action_column not in data.columns:
    raise ValueError(f"The specified columns '{pdf_path_column}', '{place_column}', or '{action_column}' are not in the Excel file.")

# Initialize Photoshop
ps_app = win32com.client.Dispatch("Photoshop.Application")
ps_app.Visible = True

# Bring Photoshop window to the front
window_title = "Adobe Photoshop 2022"
if bring_window_to_front(window_title):
    print("Photoshop window found and brought to the front.")
else:
    print("Failed to bring the Photoshop window to the front.")

for index, row in data.iterrows():
    if index < 524 or index > 552:  # Замените на нужный диапазон
        continue

    pdf_path = row[pdf_path_column]
    place = row[place_column]
    action_value = row[action_column]
    artikul_value = row.get("Артикул", "")  # Получаем значение из столбца "Артикул"

    # Пропускаем строки, где "место" равно "---"
    if place.strip() == "---":
        print(f"Пропускаем строку {index + 1}, так как 'место' равно '---'.")
        continue

    # Проверяем существование PDF файла
    pdf_path = Path(pdf_path)
    if not pdf_path.is_file():
        print(f"Неправильный или отсутствующий путь к файлу в строке {index + 1}: {pdf_path}")
        continue

    try:
        # Открываем PDF файл в Photoshop
        print(f"Открываем файл: {pdf_path}")
        ps_doc = ps_app.Open(str(pdf_path))

        # Выбираем действие Photoshop на основе значения в столбце "Бренд"
        if action_value == "Punky Monkey":
            ps_app.DoAction("create_punky", "Default Actions")
        elif action_value == "Amazing Pics":
            ps_app.DoAction("create_amazing", "Default Actions")
        else:
            print(f"Неизвестное действие для значения '{action_value}' в строке {index + 1}. Пропускаем.")
            ps_doc.Close(2)  # Закрываем без сохранения
            continue

        # Добавляем текстовый слой с "место"
        text_content_place = f"место: {place}"
        text_layer_place = ps_doc.ArtLayers.Add()
        text_layer_place.Kind = 2  # Текстовый слой
        text_layer_place.TextItem.Contents = text_content_place
        text_layer_place.TextItem.Position = [0.6, 3.74]  # Позиция текста (регулируйте при необходимости)

        # Перенос текста "Артикул" на новые строки каждые 25 символов
        if len(artikul_value) > 25:
            artikul_lines = [artikul_value[i:i+25] for i in range(0, len(artikul_value), 25)]
            artikul_value = '\r'.join(artikul_lines)  # Используем '\r' вместо '\n' для Photoshop


        # Добавляем текстовый слой с "Артикул"
        text_layer_artikul = ps_doc.ArtLayers.Add()
        text_layer_artikul.Kind = 2  # Текстовый слой
        text_layer_artikul.TextItem.Contents = artikul_value
        text_layer_artikul.TextItem.Position = [0.2, 2.6]  # Позиция текста (регулируйте при необходимости)

        # Сохраняем и закрываем файл
        save_file_with_pyautogui(str(pdf_path))
        ps_doc.Close()  # 1 = Сохранить изменения и закрыть

    except Exception as e:
        print(f"Ошибка обработки файла в строке {index + 1}: {e}")




# Quit Photoshop
# ps_app.Quit()

print("Processing complete.")
