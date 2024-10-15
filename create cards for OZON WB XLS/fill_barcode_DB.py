import os
import win32com.client

# Get the current user's home directory
user_home = os.path.expanduser("~")

# Specify the path to the xlsx file using the user's home directory
xlsx_file_path = os.path.join(user_home, "Documents", "GitHub", "Ozon_upload", "barcode", "Data path barcode.xlsx")

# Open the Excel file with the default program
try:
    os.startfile(xlsx_file_path)
    print(f"Opened: {xlsx_file_path}")
except FileNotFoundError:
    print(f"The specified Excel file was not found: {xlsx_file_path}")
except Exception as e:
    print(f"An error occurred: {e}")
