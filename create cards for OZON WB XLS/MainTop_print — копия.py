import os
import openpyxl
import pyautogui
import pyperclip
import time
import signal
import sys
import pandas as pd
import tkinter as tk
from tkinter import filedialog
import os  # Import the os module
from tkinter import Tk, filedialog


# Prompt user to select the first Excel file
root = Tk()
root.withdraw()  # Hide the root window
file1_path = filedialog.askopenfilename(filetypes=[("Excel files", "*.xlsx")])
root.destroy()  # Destroy the root window after file selection

# Read the first Excel file
#file1_path = r"C:\work\OZON_products\поставки\07.02.2024\WB_demand_г2.xlsx"
df1 = pd.read_excel(file1_path)

# Signal handler function
def signal_handler(sig, frame):
    print("Received signal. Stopping script...")
    sys.exit(0)


# Register the signal handler for SIGINT (Ctrl+C)
signal.signal(signal.SIGINT, signal_handler)


def process_image(print_path, rotate=False, layout_width=None):

    # Simulate Ctrl+I
    pyautogui.hotkey('ctrl', 'i')
    if start == 0:
        time.sleep(2)

    time.sleep(0.12)
    # Copy the text to the clipboard
    pyperclip.copy(print_path)
    time.sleep(0.12)
    # Simulate Ctrl+V to paste the text
    pyautogui.hotkey('ctrl', 'v')
    time.sleep(0.12)
    # Press Enter to confirm
    pyautogui.press('enter')
    # Press Enter to confirm
    pyautogui.press('enter')
    time.sleep(0.12)
    # Pick Tool
    pyautogui.click(30, 100)
    pyautogui.moveTo(820, 450)

    # Rotate if specified
    if rotate:
        # Rotate Tool
        pyautogui.click(20, 189)
        # moveTo Center of Aplication
        pyautogui.moveTo(982, 555)
        # Press and hold the Shift key
        pyautogui.keyDown('shift')
        # Drag the mouse cursor downwards by 30 pixels
        pyautogui.dragRel(0, 30, duration=0.2)
        # Release the Shift key
        pyautogui.keyUp('shift')
        pyautogui.mouseUp()
        pyautogui.keyDown('ctrl')
        time.sleep(0.11)
        # Pick Tool
        pyautogui.click(30, 100)
        pyautogui.moveTo(945, 540)
        time.sleep(0.11)



    # Раскладка Copy in width!!! Window 0,200px
    #layout_width = worksheet.cell(row=row, column=column_indices.get("Раскладка в ширину")).value
    if layout_width>1:
        # Press 'm' key
        time.sleep(0.11)
        pyautogui.keyDown('ctrl')
        pyautogui.press('m')
        pyautogui.keyUp('ctrl')
        # Zero values
        time.sleep(0.11)
        pyautogui.doubleClick(1020, 190)
        pyautogui.typewrite('0')
        time.sleep(0.11)
        pyautogui.doubleClick(930, 190)
        pyautogui.typewrite('200')
        time.sleep(0.11)
        # Copy Button
        pyautogui.click(1000, 360)
        time.sleep(0.11)
        # Pick Tool
        pyautogui.click(30, 100)
        pyautogui.moveTo(945, 540)
        time.sleep(0.11)
        # Select images
        pyautogui.mouseDown()
        pyautogui.dragTo(1015, 571, duration=0.2)
        # close Copy window
        pyautogui.click(1058, 366)
        time.sleep(0.11)

        # Align in width
        # Open window Align
        pyautogui.click(500, 70)
        pyautogui.doubleClick(235, 163)
        pyautogui.typewrite('4')
        time.sleep(0.11)
        # Align 4mm width
        pyautogui.click(197, 163)
        pyautogui.hotkey('ctrl', 'g')
        time.sleep(0.11)
        # Align to center of document
        pyautogui.click(284, 141)
        time.sleep(0.11)


    #time.sleep(2)
    # Select images
    #pyautogui.mouseDown()
    #pyautogui.dragTo(1015, 571, duration=0.2)
    #time.sleep(1)

    # Open window Align
    pyautogui.click(500, 70)
    time.sleep(0.11)
    # Click Center of Aplication
    pyautogui.click(982, 555)
    time.sleep(0.11)
    # Align to center of document
    pyautogui.click(284, 141)
    time.sleep(0.11)
    # Close window
    pyautogui.click(280, 111)
    time.sleep(0.11)
    # Click Center of Aplication
    pyautogui.click(982, 555)

    # Make Copies of on images from demand Num_Copies
    # Select images
    # Click Center of Aplication
    pyautogui.click(982, 555)
    # Open window Copys
    time.sleep(0.11)
    pyautogui.keyDown('ctrl')
    pyautogui.press('m')
    pyautogui.keyUp('ctrl')
    time.sleep(0.11)
    pyautogui.doubleClick(943, 185)
    pyautogui.typewrite('0')
    time.sleep(0.11)
    pyautogui.doubleClick(1024, 189)
    pyautogui.press('backspace')
    pyautogui.press('backspace')
    pyautogui.typewrite('200')

    # Get the number of copies from the corresponding cell in the "Num_Copies" column
    num_copies_raw = wb_demand_df.loc[wb_demand_df["Артикул"] == article, "Num_Copies"].values[0]
    num_copies = int(num_copies_raw) if pd.notnull(num_copies_raw) else 0

    print(num_copies)

    if num_copies > 0:
        # Ensure num_copies is even
        #if num_copies % 2 != 0:
            #num_copies += 1

        # Calculate the number of copies based on "Раскладка в ширину" and round to the nearest integer
        num_copies = round(num_copies / layout_width) - 1

        for _ in range(num_copies):
            print("COPY")
            pyautogui.click(1000, 364)
            # Optionally, add a small delay between clicks for stability
            time.sleep(0.11)

    time.sleep(0.11)
    # close window
    pyautogui.click(1071, 364)

    if start == 0:
        # Move images first image UP
        time.sleep(0.11)
        pyautogui.keyDown('ctrl')
        pyautogui.press('m')
        pyautogui.keyUp('ctrl')
        time.sleep(0.11)
        pyautogui.doubleClick(943, 185)
        pyautogui.typewrite('0')
        time.sleep(0.11)
        pyautogui.doubleClick(1024, 189)
        pyautogui.press('backspace')
        pyautogui.press('backspace')
        pyautogui.typewrite(str(offset))
        pyautogui.click(920, 360)
        time.sleep(0.11)
        # close window
        pyautogui.click(1071, 364)

    # Align all in height
    # select all images
    pyautogui.moveTo(943, 110)
    pyautogui.mouseDown()
    pyautogui.dragTo(1020, 995, duration=0.3)
    # Open window
    pyautogui.click(500, 70)
    pyautogui.doubleClick(223, 209)
    pyautogui.typewrite('5')
    time.sleep(0.11)
    # Align 5mm height
    pyautogui.click(196, 209)
    time.sleep(0.11)
    # Close window
    pyautogui.click(280, 111)
    time.sleep(0.11)
    # Click Center of Aplication
    pyautogui.click(982, 555)

    # Move canvas
    if start > 0:
        pyautogui.click(26, 228)
        # Click Center of Aplication
        pyautogui.moveTo(982, 555)
        # Simulate Ctrl + Left Mouse Click
        pyautogui.keyDown('ctrl')
        pyautogui.mouseDown(button='left')

        # Drag the mouse cursor upwards by 200 pixels
        pyautogui.dragRel(0, -offset_mouse, duration=0.2)  # Specify the distance and duration as per your requirement
        pyautogui.keyUp('ctrl')


# Path to the file to open
file_path = r"C:\work\baby prints\MainTop\tif\Template.tpf"

# Check if file exists
if os.path.exists(file_path):
    # Open the file
    print("Opening file:", file_path)
    os.startfile(file_path)
    time.sleep(2)  # Introduce a small delay


    # Initialize offset to -100
    offset_mouse = 0
    start = 0




    # Read the WB_demand.xlsx file
    #wb_demand_df = pd.read_excel(r"C:\Users\Max\Documents\GitHub\Ozon_upload\MainTop\10.03.2024\toMainTop.xlsx")
    wb_demand_df = df1
    # Read the Data path barcode.xlsx file
    barcode_df = pd.read_excel(r"C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx")

    # Extract the unique values of "Артикул" from WB_demand.xlsx
    articles = wb_demand_df["Артикул"].unique()

    # Initialize empty lists to store the values
    print_paths = []
    rotates = []
    layout_widths = []

    # Iterate through each unique article
    for article in articles:
        # Find the matching row in barcode_df based on the article value
        matching_row = barcode_df[barcode_df["Артикул"] == article]

        # If a matching row is found, extract the values of print_path, rotate, and layout_width
        if not matching_row.empty:
            print_paths.append(matching_row["путь к печати"].values[0])
            rotates.append(matching_row["Rotate"].values[0])
            layout_widths.append(matching_row["Раскладка в ширину"].values[0])
        else:
            # If no matching row is found, append None to indicate missing data
            print_paths.append(None)
            rotates.append(None)
            layout_widths.append(None)

    # Create a new DataFrame to store the results
    result_df = pd.DataFrame({
        "Артикул": articles,
        "путь к печати": print_paths,
        "Rotate": rotates,
        "Раскладка в ширину": layout_widths
    })

    # Print or further process the result DataFrame as needed
    print(result_df)

    # Check if print_paths is empty or all elements are zero
    if not any(print_paths) or all(path == 0 for path in print_paths):
        print("No valid print paths found. Exiting...")
        sys.exit(0)

    # Iterate through print_paths
    for index, article in enumerate(articles):
        print_path = print_paths[index]
        rotate = rotates[index]
        layout_width = layout_widths[index]

        # Get the number of copies from the corresponding cell in the "Num_Copies" column
        num_copies_raw = wb_demand_df.loc[wb_demand_df["Артикул"] == article, "Num_Copies"].values[0]
        num_copies = int(num_copies_raw) if pd.notnull(num_copies_raw) else 0

        # Check if article exists in wb_demand_df
        if article in wb_demand_df["Артикул"].values:
            # Extract Num_Copies if the article exists
            num_copies = wb_demand_df.loc[wb_demand_df["Артикул"] == article, "Num_Copies"].values[0]

            # Check if Num_Copies is 0, then skip
            if pd.isnull(num_copies) or num_copies == 0 or num_copies < 0:
                print(f"Skipping article {article} as Num_Copies is 0.")


                continue
        else:
            print(f"Article {article} not found in wb_demand_df. Skipping.")
            continue

        # Check if print_path is empty or 0
        if not print_path or print_path == 0:
            print(f"Encountered empty or 0 print_path for article {article}. Stopping script.")
            time.sleep(1)
            sys.exit(0)
            time.sleep(1)
        # Now calculate the offset
        offset = -13580 - num_copies * 140
        process_image(print_path, rotate, layout_width)  # Pass layout_width as an argument
        offset += 40  # Increment offset for the next iteration
        offset_mouse=4.0*(num_copies+0)
        print("offset_mouse",offset_mouse)
        start += 1

