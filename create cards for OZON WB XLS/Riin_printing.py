import os
import subprocess
import pyautogui
import pygetwindow as gw
import time
import pandas as pd
import pyperclip
from tkinter import Tk, filedialog
import shutil
from datetime import datetime
import ctypes

import tkinter as tk
from tkinter import simpledialog, messagebox
import requests
import sys
import keyboard

def focus_current_window():
    win = gw.getActiveWindow()
    if win:
        win.activate()
        time.sleep(0.3)


LANG_RUSSIAN = 0x419
LANG_ENGLISH = 0x409
user32 = ctypes.WinDLL('user32', use_last_error=True)

def get_current_keyboard_layout():
    hwnd = user32.GetForegroundWindow()
    thread_id = user32.GetWindowThreadProcessId(hwnd, 0)
    layout_id = user32.GetKeyboardLayout(thread_id)
    language_id = layout_id & (2**16 - 1)
    return language_id

def switch_to_english_if_needed():
    print("Пробую принудительно переключить раскладку на английскую (США)...")

    # Загружаем английскую раскладку (США) — 00000409
    hkl = user32.LoadKeyboardLayoutW("00000409", 1)
    if not hkl:
        print("Ошибка: не удалось загрузить английскую раскладку")
        return

    # Активируем раскладку
    result = user32.ActivateKeyboardLayout(hkl, 0)
    time.sleep(0.5)

    # Проверка результата
    current_lang = get_current_keyboard_layout()
    print(f"Текущая раскладка после переключения: {'РУССКАЯ' if current_lang == LANG_RUSSIAN else 'АНГЛИЙСКАЯ'}")




       
# === Проверка пароля через Google Sheets ===
GOOGLE_SHEETS_URL = "https://script.google.com/macros/s/AKfycbwgxVIPgLIEO_RUbp79GUkhem9sSNf2RTx2lp9EzuChZkgv-dnVekUdyz1B6_eiWCSg/exec"  # замени на свою

def get_expected_password():
    try:
        r = requests.get(GOOGLE_SHEETS_URL, timeout=5)
        return r.text.strip()
    except:
        return None

def request_password():
    temp_root = tk.Tk()
    temp_root.withdraw()
    pw = simpledialog.askstring("Доступ", "Введите пароль на сегодня:")
    temp_root.destroy()
    return pw

expected_password = get_expected_password()
entered_password = request_password()

if expected_password is None or expected_password == "INVALID":
    messagebox.showerror("Ошибка", "Не удалось подключиться к серверу.")
    sys.exit()

if entered_password != expected_password:
    messagebox.showerror("Ошибка", "Неверный пароль.")
    sys.exit()



def choose_excel_file():
    root = Tk()
    root.withdraw()  # Hide the root window
    root.update()
    file_path = filedialog.askopenfilename(
        filetypes=[("Excel files", "*.xlsx *.xls")],
        title="Choose an Excel file"
    )
    root.destroy()
    return file_path


def find_path_barcode(articul, barcode_df):
    matching_row = barcode_df.loc[barcode_df['Артикул'] == articul]
    if not matching_row.empty:
        return matching_row.iloc[0]['путь к печати'], matching_row.iloc[0].get('Rotate', 0)
    return None, 0


def ensure_correct_file_extension(file_path, expected_extension=".tif"):
    if not file_path.endswith(expected_extension):
        file_path += expected_extension
    return file_path


def main():
    focus_current_window()
    switch_to_english_if_needed()
    print("Раскладка проверена и переключена (если нужно)")

    # Prompt the user to choose the first Excel file
    excel_path = choose_excel_file()

    if not excel_path:
        print("No file selected. Exiting...")
        return

    # Read the chosen Excel file to extract data
    df = pd.read_excel(excel_path)
    print("Columns in the chosen Excel file:", df.columns)

    # Path to the second Excel file containing the paths
    barcode_excel_path = r"C:\Users\maxim\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx"
    barcode_df = pd.read_excel(barcode_excel_path)
    print("Columns in the barcode Excel file:", barcode_df.columns)

    # Extract data from the DataFrame
    articul_column = "Артикул"
    copies_column = "Num_Copies"
    path_column = "путь к печати"
    rotate_column = "Rotate"

    # Ensure the necessary columns exist in both DataFrames
    if articul_column in df.columns and copies_column in df.columns and articul_column in barcode_df.columns and path_column in barcode_df.columns:
        # Create a copy of the Template - RIIN file with a timestamp
        original_template_path = r"C:\work\Template30cm.rcf"
        filename = os.path.splitext(os.path.basename(excel_path))[0]
        timestamp = f"{filename}_{datetime.now().strftime('data%d.%m.%Y_time%H.%M')}"
        new_template_path = f"C:\\work\\{timestamp}.rcf"
        shutil.copy(original_template_path, new_template_path)
        print(f"Copied Template30cm.rcf to {new_template_path}")


        # Open the copied Template - RIIN file with the default application
        print("Opening the copied Template - RIIN file...")
        subprocess.run(["start", new_template_path], shell=True)

        # Wait for a few seconds to ensure the file is opened
        print("Waiting for the copied Template - RIIN file to open...")
        time.sleep(8)

        # Format the window title to include the actual timestamp
        window_title = f"{timestamp} - RIIN"
        print(f"Searching for the window '{window_title}'...")
        window = gw.getWindowsWithTitle(window_title)

        if window:
            print("Window found. Bringing it to the front...")
            window[0].activate()

            # Wait a moment to ensure the window is in focus
            time.sleep(0.3)

            for index, row in df.iterrows():
                articul = row[articul_column]
                copies = row[copies_column]
                # Find the corresponding path and rotation flag from the second Excel file
                file_path, rotate = find_path_barcode(articul, barcode_df)
                file_path = ensure_correct_file_extension(file_path)  # Ensure the correct file extension

                # Debug print statements
                print(f"Processing Артикул: {articul}, Num_Copies: {copies}, File Path: {file_path}, Rotate: {rotate}")

                # Check if the file exists
                if file_path and os.path.exists(file_path):
                    # Simulate Ctrl+O keypress to open the file dialog
                    print("Simulating Ctrl+O keypress...")
                    # time.sleep(0.4)
                    pyautogui.hotkey('ctrl', 'o')
                    print("Ctrl+O keypress simulated.")

                    # Wait for the file dialog to open
                    time.sleep(0.4)

                    # Copy the file path to the clipboard and type it out
                    print(f"Pasting the file path: {file_path}")
                    pyperclip.copy(file_path)  # Copy file path to clipboard
                    time.sleep(0.3)
                    pyautogui.hotkey('ctrl', 'v')  # Paste the file path from clipboard
                    pyautogui.press('enter')  # Press Enter to open the file
                    time.sleep(0.3)
                    pyautogui.press('enter')
                    time.sleep(2.1)
                    # Click on the specific location (920, 20) for a different purpose
                    pyautogui.click(920, 20)
                    time.sleep(0.3)

                    # Rotate if needed
                    if rotate == 1:
                        # Click 525, 975 pixels
                        pyautogui.click(525, 975)
                        print("Rotated")
                        time.sleep(2.1)

                    c = int(copies / 2 - 1)
                    print(c)
                    if c > 0:
                        print("COPY times ", c)
                        time.sleep(0.2)
                        # Click on the specific location (920, 20) for a different purpose
                        pyautogui.click(920, 20)
                        time.sleep(0.2)
                        pyautogui.hotkey('ctrl', 'c')
                        pyautogui.rightClick(1092, 427)
                        pyautogui.click(1169, 586)
                        time.sleep(0.2)
                        pyautogui.write(str(4))
                        time.sleep(0.2)
                        pyautogui.doubleClick(936, 416)
                        time.sleep(0.2)
                        pyautogui.write(str(5))
                        time.sleep(0.2)
                        pyautogui.doubleClick(931, 470)

                        pyautogui.write(str(c))
                        time.sleep(0.3)
                        pyautogui.press('enter')
                        time.sleep(2.1)
                        pyautogui.hotkey('ctrl', 'g')
                        time.sleep(0.3)
                        # Click on the specific location (920, 20) for a different purpose
                        pyautogui.click(920, 20)
                        time.sleep(0.2)

                    # Align to Center Button
                    print("Align to Center Button")
                    pyautogui.click(665, 940)
                    time.sleep(0.3)
                    # Click on the specific location (920, 20) for a different purpose
                    pyautogui.click(920, 20)
                    time.sleep(0.3)

            # Select all images
            pyautogui.hotkey('ctrl', 'a')
            time.sleep(0.4)
            # pyautogui.moveTo(745, 190)
            # pyautogui.mouseDown()
            # pyautogui.dragTo(1323, 985, duration=0.5)
            # time.sleep(0.4)

            #5mm
            pyautogui.click(451, 940)
            time.sleep(0.4)
            pyautogui.doubleClick(349, 820)
            time.sleep(0.4)
            pyautogui.write(str(4))
            time.sleep(0.4)
            pyautogui.doubleClick(354, 864)
            time.sleep(0.4)
            pyautogui.write(str(5))
            time.sleep(0.4)
            pyautogui.press('enter')
            time.sleep(1)
            pyautogui.click(523, 935)
            time.sleep(0.4)
            pyautogui.click(665, 938)
            time.sleep(0.4)


            # Additional operations after processing all rows
            # Click on the specific location (920, 20) for a different purpose
            pyautogui.click(920, 20)
            time.sleep(0.4)
            pyautogui.click(140, 60)
            time.sleep(0.4)
            pyautogui.click(791, 756)
            time.sleep(0.4)
            pyautogui.doubleClick(831, 394)
            time.sleep(0.4)
            pyautogui.write(str(0.6))
            time.sleep(0.4)
            pyautogui.press('enter')
            time.sleep(0.4)
            pyautogui.press('esc')
            time.sleep(0.4)

            # Select all images
            pyautogui.hotkey('ctrl', 'a')
            time.sleep(0.4)
            #pyautogui.moveTo(745, 190)
            #pyautogui.mouseDown()
            #pyautogui.dragTo(1323, 985, duration=0.5)
            #time.sleep(0.4)
            pyautogui.hotkey('ctrl', 'g')
            # Copy
            pyautogui.hotkey('ctrl', 'c')
            time.sleep(0.4)
            pyautogui.rightClick(1092, 427)
            time.sleep(0.4)
            pyautogui.click(1169, 586)
            time.sleep(0.4)
            #original pyautogui.write(str(14))
            pyautogui.write(str(8))
            time.sleep(0.4)
            time.sleep(0.4)
            pyautogui.doubleClick(931, 470)
            pyautogui.write(str(1))
            time.sleep(0.4)
            pyautogui.press('enter')
            time.sleep(1)

            # Click on the specific location (920, 20) for a different purpose
            pyautogui.click(920, 20)
            time.sleep(0.4)
            # Align to Center Button
            print("Align to Center Button")
            pyautogui.click(665, 940)
            time.sleep(0.4)

            #save file
            time.sleep(2)
            # Simulate Ctrl+S to save
            pyautogui.hotkey('ctrl', 's')
            time.sleep(2)
            # Simulate Enter key to confirm save
            pyautogui.press('enter')

            #messagebox.showinfo("Process Complete", "Delete LINES GUIEDS or it will be printed! Process Complete")
            #print
            pyautogui.click(133, 59)
            time.sleep(0.4)
            pyautogui.click(1189, 759)
            time.sleep(0.4)
            pyautogui.write(str(timestamp))
            time.sleep(0.4)
            pyautogui.press('enter')
            time.sleep(1)

        else:
            print(f"The window 'Template30cm - RIIN' was not found.")
    else:
        print(f"One or more necessary columns are missing in the Excel files.")


if __name__ == "__main__":
    main()