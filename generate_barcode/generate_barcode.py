import subprocess
import pyautogui
import time
import pygetwindow as gw

# Replace the path with the actual path to your Adobe Illustrator executable
illustrator_path = r'C:\Program Files\Adobe\Adobe Illustrator 2022\Support Files\Contents\Windows\Illustrator.exe'

# Replace the path with the actual path to your PDF files
template_pdf_path = r'C:\Users\Max\Documents\GitHub\Ozon_upload\generate_barcode\template_barcode.pdf'
barcode_pdf_path = r'C:\Users\Max\Documents\GitHub\Ozon_upload\generate_barcode\barcode.pdf'

def open_illustrator_and_file(pdf_path):
    # Find the Illustrator window
    ai_window = gw.getWindowsWithTitle('Adobe Illustrator')

    # If Illustrator is not running, open it
    if not ai_window:
        subprocess.Popen([illustrator_path])
        time.sleep(7)  # Adjust the sleep duration based on your system's speed

    # Now Illustrator should be running, find the window again
    ai_window = gw.getWindowsWithTitle('Adobe Illustrator')
    if ai_window:
        ai_window = ai_window[0]
        ai_window.activate()

        # Simulate pressing Ctrl key
        pyautogui.keyDown('ctrl')

        # Simulate pressing 'o' key
        pyautogui.press('o')

        # Release Ctrl key
        pyautogui.keyUp('ctrl')

        # Wait for the file dialog to appear (adjust the duration as needed)
        time.sleep(2)

        # Type the file path using pyautogui
        pyautogui.write(pdf_path)

        # Press Enter to open the file
        pyautogui.press('enter')
    else:
        print("Adobe Illustrator window not found.")

# Call the function to open "template_barcode.pdf"
open_illustrator_and_file(template_pdf_path)

# Wait for Illustrator to finish processing the first file (adjust the duration as needed)
time.sleep(10)  # Increase the sleep duration

# Call the function to open "barcode.pdf"
open_illustrator_and_file(barcode_pdf_path)
