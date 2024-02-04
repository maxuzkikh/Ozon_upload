import pandas as pd
import subprocess
import os
import winreg

def get_acrobat_path():
    try:
        base_key = winreg.HKEY_LOCAL_MACHINE
        if os.environ.get('PROGRAMFILES(X86)'):
            # 64-bit system
            acrobat_key = r"SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Acrobat.exe"
        else:
            # 32-bit system
            acrobat_key = r"SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\App Paths\Acrobat.exe"

        with winreg.OpenKey(base_key, acrobat_key) as key:
            acrobat_path = winreg.QueryValue(key, None)
            return acrobat_path
    except Exception as e:
        print(f"Error: Unable to find Adobe Acrobat path. {e}")
        return None

def print_pdfs_from_excel(excel_file_path, printer_name='Xprinter XP-365B'):
    acrobat_path = get_acrobat_path()

    if not acrobat_path:
        print("Error: Adobe Acrobat path not found. Please check if it's installed.")
        return

    try:
        # Read Excel file
        df = pd.read_excel(excel_file_path)

        # Ensure the column containing local PDF paths is converted to strings
        local_pdf_path_column_name = 'Local_PDF_Path_Column_Name'  # Replace with the actual column name
        df[local_pdf_path_column_name] = df[local_pdf_path_column_name].astype(str)

        # Ensure the column containing the number of copies is converted to integers
        num_copies_column_name = 'Num_Copies'  # Replace with the actual column name
        df[num_copies_column_name] = df[num_copies_column_name].astype(int)

        # Iterate through the local PDF paths, print each one
        for index, row in df.iterrows():
            pdf_path = row[local_pdf_path_column_name]
            num_copies = row[num_copies_column_name]

            if isinstance(pdf_path, str) and os.path.exists(pdf_path) and pdf_path.lower().endswith('.pdf'):
                for _ in range(num_copies):
                    print_pdf_to_printer(pdf_path, acrobat_path, printer_name)
            else:
                print(f"Error: Invalid or non-existent PDF path: {pdf_path}")
    except Exception as e:
        print(f"Error: Unable to process Excel file. {e}")

def print_pdf_to_printer(pdf_path, acrobat_path, printer_name='Xprinter XP-365B'):
    try:
        # Set width and height according to Xprinter property
        command = [acrobat_path, "/t", pdf_path, printer_name, '/h', '40', '/w', '58', '/o', 'album']
        subprocess.run(command, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error: Unable to print PDF file. {e}")

# Replace 'C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\your_excel_file.xlsx' with the actual path to your Excel file
excel_file_path = r'C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\your_excel_file.xlsx'

# Optional: Specify the column name containing local PDF paths
local_pdf_path_column_name = 'Local_PDF_Path_Column_Name'

# Optional: Specify the column name containing the number of copies
num_copies_column_name = 'Num_Copies'

# Optional: Specify the printer name
printer_name = 'Xprinter XP-365B'

# Print PDFs using the modified code
print_pdfs_from_excel(excel_file_path, printer_name)
