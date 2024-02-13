import subprocess
import time
import pyautogui
import os
import win32com.client
from tkinter import filedialog
import tkinter as tk

# Function to simulate keyboard shortcut for "Save As..."
def save_as():
    pyautogui.hotkey('ctrl', 'shift', 's')  # Simulate Ctrl + Shift + S for Save As...

# Function to navigate and select the desired folder
def choose_folder():
    root = tk.Tk()
    root.withdraw()
    folder_path = filedialog.askdirectory()
    return folder_path

# Rename file function
def rename_file(old_name, new_name):
    os.rename(old_name, new_name)

# Path to Photoshop executable
photoshop_path = r"C:\Program Files\Adobe\Adobe Photoshop 2022\Photoshop.exe"  # Update the version number accordingly

# Select the folder containing PDF files
folder_path = choose_folder()

# Create "output" folder if it doesn't exist
output_folder = os.path.join(folder_path, "output")
if not os.path.exists(output_folder):
    os.makedirs(output_folder)

# Loop through each PDF file in the folder
for filename in os.listdir(folder_path):
    if filename.endswith(".pdf"):  # Check if the file is a PDF
        pdf_path = os.path.join(folder_path, filename)  # Full path to the PDF file

        # Extract file name from the PDF path
        pdf_filename = os.path.basename(pdf_path)

        # Remove file extension
        pdf_filename_without_extension = os.path.splitext(pdf_filename)[0]

        # First text content
        first_text_content = (
                "ИП Узких М.Ю. ОГРНИП: 317745600076397" + '\r' +
                "Punky Monkey, Адрес: Россия, г.Челябинск, ул. Яблочкина 10А"
        )

        # Second text content
        second_text_content = "" + pdf_filename_without_extension
        if len(pdf_filename_without_extension) > 28:
            second_text_content = pdf_filename_without_extension[:28] + '\r' + pdf_filename_without_extension[28:]
        else:
            second_text_content = pdf_filename_without_extension


        # Command to open PDF in Photoshop
        command = [photoshop_path, pdf_path]

        # Open PDF in Photoshop
        process = subprocess.Popen(command)

        # Give some time for Photoshop to open
        time.sleep(1)  # Adjust the delay as needed

        # Simulate pressing the Enter key
        pyautogui.press('enter')

        # Wait for the "Open PDF" dialog to appear
        time.sleep(1)  # Adjust the delay as needed

        # Create a new instance of Photoshop
        app = win32com.client.Dispatch("Photoshop.Application")

        # Get the active document
        doc = app.Application.ActiveDocument

        # Set canvas size to 5x8 centimeters
        new_width_cm = 5.8
        new_height_cm = 4
        anchor = 2  # Anchor at the top left corner
        doc.ResizeCanvas(new_width_cm, new_height_cm, anchor)

        # Create the first text layer
        first_text_layer = doc.ArtLayers.Add()
        first_text_layer.Kind = 2  # Text layer
        first_text_layer.TextItem.Contents = first_text_content

        # Set font size for the first text layer
        first_text_layer.TextItem.Size = 6

        # Move the text layer to Y coordinate of 3.2 cm
        first_text_layer.Translate(-0.5, 3.2)

        # Create the second text layer
        second_text_layer = doc.ArtLayers.Add()
        second_text_layer.Kind = 2  # Text layer
        second_text_layer.TextItem.Contents = second_text_content

        # Set font size for the second text layer
        second_text_layer.TextItem.Size = 11
        second_text_layer.Translate(-0.4, 2.4)

        # Call the function to simulate "Save As..." shortcut
        save_as()
        time.sleep(1)

        # Select the "output" folder for saving
        #choose_folder()
        #pyautogui.typewrite(output_folder)

        # Confirm the selection
        pyautogui.press('enter')
        time.sleep(0.3)
        pyautogui.press('enter')
        time.sleep(0.3)
        pyautogui.press('enter')
        time.sleep(0.3)
        pyautogui.press('enter')

        # New file name after renaming
        #new_file_name = os.path.join(output_folder, pdf_filename_without_extension + "_modified.pdf")

        # Rename the file
        #rename_file(os.path.join(output_folder, "Barcode_new.pdf"), new_file_name)
        time.sleep(1)

        # Close the Photoshop document
        doc.Close()
        # Close Photoshop
        # process.terminate()  # Uncomment if you want to close Photoshop automatically
