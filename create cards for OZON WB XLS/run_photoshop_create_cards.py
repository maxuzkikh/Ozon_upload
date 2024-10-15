import os
import win32com.client

# Get the current user's home directory
user_home = os.path.expanduser("~")

# Specify the path to the PSD file using the user's home directory
psd_file_path = os.path.join(user_home, "Documents", "GitHub", "Ozon_upload", "Tatulya", "photoshop cards", "wb_export_A4.psd")

# Create a connection to Photoshop
app = win32com.client.Dispatch("Photoshop.Application")

# Open the PSD file
try:
    doc = app.Open(psd_file_path)
    print(f"Opened PSD: {psd_file_path}")
except Exception as e:
    print(f"An error occurred: {e}")
