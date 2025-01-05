import win32com.client
import pandas as pd
from pathlib import Path
import ctypes
import time

def bring_window_to_front(window_title):
    """Bring a window to the front using its title."""
    hwnd = ctypes.windll.user32.FindWindowW(None, window_title)
    if hwnd == 0:
        print(f"Window with title '{window_title}' not found.")
        return False

    ctypes.windll.user32.SetForegroundWindow(hwnd)
    time.sleep(0.3)  # Allow some time for the window to activate
    return True

# Define file paths
excel_file_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx"

# Define column names
pdf_path_column = "Local_PDF_Path_Column_Name"
place_column = "место"

# Load the Excel data
data = pd.read_excel(excel_file_path)

# Check for missing columns
if pdf_path_column not in data.columns or place_column not in data.columns:
    raise ValueError(f"The specified columns '{pdf_path_column}' or '{place_column}' are not in the Excel file.")

# Initialize Photoshop
ps_app = win32com.client.Dispatch("Photoshop.Application")
ps_app.Visible = True

# Bring Photoshop window to the front
window_title = "Adobe Photoshop 2022"
if bring_window_to_front(window_title):
    print("Photoshop window found and brought to the front.")
else:
    print("Failed to bring the Photoshop window to the front.")

# Wait a moment to ensure the window is in focus
time.sleep(0.3)

# Process only the first row of the data
for index, row in data.iterrows():
    if index >= 1:  # Process only the first row
        break

    pdf_path = row[pdf_path_column]
    place = row[place_column]

    # Validate the PDF path
    if not isinstance(pdf_path, str) or not Path(pdf_path).is_file():
        print(f"Invalid or missing file path at row {index}: {pdf_path}")
        continue

    try:
        # Open the PDF file in Photoshop
        ps_doc = ps_app.Open(pdf_path)

        # Run the predefined action "create_white"
        ps_app.DoAction("create_white", "Default Actions")

        # Add text layer with the specified text
        text_content = f"место {place}"
        text_layer = ps_doc.ArtLayers.Add()
        text_layer.Kind = 2  # Text layer
        text_layer.TextItem.Contents = text_content

        # Position the text layer in the bottom right corner
        text_layer.TextItem.Position = [0.6, 3.7]  # Adjust offsets as needed

        # Save the updated file in place
        ps_doc.Save()  # Save changes to the original file

        # Close the document
        ps_doc.Close(1)  # 1 = Save changes and close
        print(f"Updated and saved file: {pdf_path}")

    except Exception as e:
        print(f"Error processing file {pdf_path}: {e}")

# Quit Photoshop
ps_app.Quit()

print("Processing complete.")
