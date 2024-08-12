import os
import subprocess
import pyautogui
import pygetwindow as gw
import time
import pandas as pd
import pyperclip
from tkinter import Tk, filedialog

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
        # Open the Template - RIIN file with the default application once at the start
        print("Opening the Template - RIIN file...")
        template_path = r"C:\work\Template30cm.rcf"  # Adjust this path to your Template - RIIN file
        subprocess.run(["start", template_path], shell=True)

        # Wait for a few seconds to ensure the file is opened
        print("Waiting for the Template - RIIN file to open...")
        time.sleep(8)

        # Bring the application window to the front
        print("Searching for the window 'Template30cm - RIIN'...")
        window = gw.getWindowsWithTitle("Template30cm - RIIN")
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
                    time.sleep(0.7)
                    pyautogui.hotkey('ctrl', 'o')
                    print("Ctrl+O keypress simulated.")

                    # Wait for the file dialog to open
                    time.sleep(0.7)

                    # Copy the file path to the clipboard and type it out
                    print(f"Pasting the file path: {file_path}")
                    pyperclip.copy(file_path)  # Copy file path to clipboard
                    time.sleep(0.7)
                    pyautogui.hotkey('ctrl', 'v')  # Paste the file path from clipboard
                    pyautogui.press('enter')  # Press Enter to open the file
                    time.sleep(0.7)
                    pyautogui.press('enter')
                    time.sleep(0.7)

                    # Rotate if needed
                    if rotate == 1:
                        # Click 525, 975 pixels
                        pyautogui.click(525, 975)
                        print("Rotated")
                        time.sleep(0.5)

                    # Click on the specific location (920, 20) for a different purpose
                    pyautogui.click(920, 20)
                    time.sleep(0.3)
                    pyautogui.hotkey('ctrl', 'c')
                    pyautogui.rightClick(1092, 427)
                    pyautogui.click(1169, 586)
                    time.sleep(0.3)
                    pyautogui.write(str(4))
                    time.sleep(0.3)
                    pyautogui.doubleClick(936, 416)
                    time.sleep(0.3)
                    pyautogui.write(str(5))
                    time.sleep(0.3)
                    pyautogui.doubleClick(931, 470)
                    c = int(copies/2 - 1)
                    pyautogui.write(str(c))
                    time.sleep(0.3)
                    pyautogui.press('enter')
                    time.sleep(1)

                    # Align to Center Button
                    print("Align to Center Button")
                    pyautogui.click(665, 940)
                    time.sleep(0.5)

                    # Select all images
                    #pyautogui.moveTo(745, 190)
                    #pyautogui.mouseDown()
                    #pyautogui.dragTo(1160, 985, duration=0.5)

                    # Click on the specific location (920, 20) for a different purpose
                    pyautogui.click(920, 20)
                    time.sleep(0.2)

            # Additional operations after processing all rows

            time.sleep(0.1)
            pyautogui.click(140, 60)
            time.sleep(0.3)
            pyautogui.click(791, 756)
            time.sleep(0.3)
            pyautogui.doubleClick(831, 394)
            time.sleep(0.3)
            pyautogui.write(str(0.6))
            time.sleep(0.3)
            pyautogui.press('enter')
            time.sleep(0.3)
            pyautogui.press('esc')
            time.sleep(0.1)
            # Select all images
            pyautogui.moveTo(745, 190)
            pyautogui.mouseDown()
            pyautogui.dragTo(1160, 985, duration=0.5)
            time.sleep(0.1)
            pyautogui.hotkey('ctrl', 'g')
            #Copy
            pyautogui.hotkey('ctrl', 'c')
            time.sleep(0.1)
            pyautogui.rightClick(1092, 427)
            time.sleep(0.1)
            pyautogui.click(1169, 586)
            time.sleep(0.1)
            pyautogui.write(str(14))
            time.sleep(0.1)
            time.sleep(0.3)
            pyautogui.doubleClick(931, 470)
            pyautogui.write(str(1))
            time.sleep(0.3)
            pyautogui.press('enter')
            time.sleep(1)
            
            # Click on the specific location (920, 20) for a different purpose
            pyautogui.click(920, 20)
            time.sleep(0.2)
            # Align to Center Button
            print("Align to Center Button")
            pyautogui.click(665, 940)
            time.sleep(0.5)
            

        else:
            print(f"The window 'Template30cm - RIIN' was not found.")
    else:
        print(f"One or more necessary columns are missing in the Excel files.")

if __name__ == "__main__":
    main()
