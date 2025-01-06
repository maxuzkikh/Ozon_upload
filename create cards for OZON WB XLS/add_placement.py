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

# Process rows 100-102
for index, row in data.iterrows():
    if index < 393 or index > 530:  # Adjust as needed
        continue

    pdf_path = row[pdf_path_column]
    place = row[place_column]
    action_value = row[action_column]

    # Skip rows where "место" is "--- "
    if place.strip() == "---":
        print(f"Skipping row {index + 1} as 'место' is '---'.")
        continue

    # Validate the PDF path
    pdf_path = Path(pdf_path)
    if not pdf_path.is_file():
        print(f"Invalid or missing file path at row {index + 1}: {pdf_path}")
        continue

    try:
        # Open the PDF file in Photoshop
        print(f"Opening file: {pdf_path}")
        ps_doc = ps_app.Open(str(pdf_path))

        # Choose the Photoshop action based on the value in "Бренд"
        if action_value == "Punky Monkey":
            ps_app.DoAction("create_punky", "Default Actions")
        elif action_value == "Amazing Pics":
            ps_app.DoAction("create_amazing", "Default Actions")
        else:
            print(f"Unknown action for value '{action_value}' at row {index + 1}. Skipping.")
            ps_doc.Close(2)  # Close without saving
            continue

        # Add text layer with the specified text
        text_content = f"место: {place}"
        text_layer = ps_doc.ArtLayers.Add()
        text_layer.Kind = 2  # Text layer
        text_layer.TextItem.Contents = text_content

        # Position the text layer in the bottom right corner
        text_layer.TextItem.Position = [0.6, 3.74]  # Adjust offsets as needed

        # Save and close the file
        save_file_with_pyautogui(str(pdf_path))
        ps_doc.Close()  # 1 = Save changes and close

    except Exception as e:
        print(f"Error processing file at row {index + 1}: {e}")

# Quit Photoshop
# ps_app.Quit()

print("Processing complete.")
