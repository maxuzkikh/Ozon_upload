import subprocess
import os
import time
import pyautogui

# Path to the image file
file_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\инструкция\инструкция_таняА4.jpg"

# Correct path to Photoshop
photoshop_path = r"C:\Program Files\Adobe\Adobe Photoshop 2022\Photoshop.exe"

# Open the file in Photoshop
if os.path.exists(file_path):
    subprocess.run([photoshop_path, file_path])
    print("File opened in Photoshop.")

    # Wait for Photoshop to fully open the file
    time.sleep(5)

    # Send Ctrl+P to open the print dialog
    pyautogui.hotkey('ctrl', 'p')
    print("Print dialog opened. Adjust settings manually and confirm.")
else:
    print(f"File not found: {file_path}")
