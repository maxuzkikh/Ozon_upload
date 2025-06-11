import win32com.client
import pandas as pd
from pathlib import Path
import ctypes
import time
import pyautogui
import pyperclip
import keyboard
import os

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
    """Save file using clipboard with more robust handling."""
    try:
        time.sleep(1)
        pyautogui.hotkey('ctrl', 'shift', 's')  # Open Save As dialog
        
        # Clear and set the file path
        time.sleep(1)
        pyautogui.hotkey('ctrl', 'a')  # Select all
        pyautogui.press('delete')  # Clear existing text
        pyperclip.copy(full_path)
        time.sleep(0.5)
        pyautogui.hotkey('ctrl', 'v')  # Paste path
        
        # Handle save dialog
        time.sleep(1)
        pyautogui.press('enter')  # Confirm path
        
        # Handle potential overwrite prompts
        for _ in range(3):  # Try a few times if needed
            time.sleep(1)
            if keyboard.is_pressed('enter'):  # Check if Enter is needed
                pyautogui.press('enter')
        
        print(f"Файл успешно сохранён в {full_path}.")
        return True
    except Exception as e:
        print(f"Ошибка при сохранении файла: {e}")
        return False

# Define file paths - UPDATE THESE TO YOUR ACTUAL PATHS
excel_file_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx"
base_path = r"C:\Users\Max"  # No trailing backslash

# Define column names - UPDATE THESE TO YOUR ACTUAL COLUMN NAMES
pdf_path_column = "PDF_Path"  # Replace with your actual PDF path column name
place_column = "место"
action_column = "Бренд"
artikul_column = "Артикул"  # Explicit column name

# Load the Excel data
try:
    data = pd.read_excel(excel_file_path)
    print(f"Успешно загружено {len(data)} строк из Excel.")
except Exception as e:
    raise ValueError(f"Ошибка загрузки Excel файла: {e}")

# Validate columns
required_columns = [pdf_path_column, place_column, action_column, artikul_column]
missing_columns = [col for col in required_columns if col not in data.columns]
if missing_columns:
    raise ValueError(f"Отсутствуют необходимые колонки: {', '.join(missing_columns)}")

# Initialize Photoshop
try:
    ps_app = win32com.client.Dispatch("Photoshop.Application")
    ps_app.Visible = True
    print("Photoshop успешно запущен.")
except Exception as e:
    raise RuntimeError(f"Ошибка инициализации Photoshop: {e}")

# Bring Photoshop window to the front
window_title = "Adobe Photoshop 2022"
if not bring_window_to_front(window_title):
    print("Предупреждение: не удалось активировать окно Photoshop.")

# Process rows - UPDATE THE RANGE AS NEEDED
start_row = 557  # Change as needed
end_row = 557    # Change as needed

for index, row in data.iterrows():
    if index < start_row or index > end_row:
        continue

    try:
        # Prepare paths
        relative_pdf_path = row[pdf_path_column].strip()
        if not relative_pdf_path:
            print(f"Пропускаем строку {index + 1}: пустой путь к PDF.")
            continue
            
        pdf_path = os.path.join(base_path, relative_pdf_path)
        place = str(row[place_column]).strip()
        action_value = str(row[action_column]).strip()
        artikul_value = str(row[artikul_column]).strip()

        # Skip rows with empty place
        if place == "---":
            print(f"Пропускаем строку {index + 1}, так как 'место' равно '---'.")
            continue

        # Verify PDF exists
        if not os.path.isfile(pdf_path):
            print(f"Пропускаем строку {index + 1}: файл не найден - {pdf_path}")
            continue

        print(f"\nОбработка строки {index + 1}: {pdf_path}")

        # Open PDF in Photoshop
        try:
            ps_doc = ps_app.Open(pdf_path)
        except Exception as e:
            print(f"Ошибка открытия файла: {e}")
            continue

        # Apply action based on brand
        try:
            if action_value == "Punky Monkey":
                ps_app.DoAction("create_punky", "Default Actions")
            elif action_value == "Amazing Pics":
                ps_app.DoAction("create_amazing", "Default Actions")
            else:
                print(f"Неизвестное действие для бренда '{action_value}'. Пропускаем.")
                ps_doc.Close(2)  # Close without saving
                continue
        except Exception as e:
            print(f"Ошибка выполнения действия: {e}")
            ps_doc.Close(2)
            continue

        # Add place text layer
        try:
            text_content_place = f"место: {place}"
            text_layer_place = ps_doc.ArtLayers.Add()
            text_layer_place.Kind = 2  # Text layer
            text_layer_place.TextItem.Contents = text_content_place
            text_layer_place.TextItem.Position = [0.6, 3.74]
        except Exception as e:
            print(f"Ошибка добавления текста 'место': {e}")

        # Format artikul text
        try:
            if len(artikul_value) > 25:
                artikul_lines = [artikul_value[i:i+25] for i in range(0, len(artikul_value), 25)]
                artikul_value = '\r'.join(artikul_lines)

            # Add artikul text layer
            text_layer_artikul = ps_doc.ArtLayers.Add()
            text_layer_artikul.Kind = 2
            text_layer_artikul.TextItem.Contents = artikul_value
            text_layer_artikul.TextItem.Position = [0.2, 2.8]
        except Exception as e:
            print(f"Ошибка добавления текста 'Артикул': {e}")

        # Save and close
        if save_file_with_pyautogui(pdf_path):
            ps_doc.Close(1)  # Save and close
        else:
            ps_doc.Close(2)  # Close without saving
            print(f"Не удалось сохранить файл: {pdf_path}")

    except Exception as e:
        print(f"Критическая ошибка обработки строки {index + 1}: {e}")

print("\nОбработка завершена.")