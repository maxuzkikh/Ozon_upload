import pandas as pd
import subprocess
import os
import winreg
import win32print
import time
import pygetwindow as gw
import psutil


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

def set_number_of_copies(printer_name, num_copies):
    try:
        h_printer = win32print.OpenPrinter(printer_name, {'DesiredAccess': win32print.PRINTER_ALL_ACCESS})
        defaults = win32print.GetPrinter(h_printer, 2)
        defaults['pDevMode'].Copies = num_copies
        win32print.SetPrinter(h_printer, 2, defaults, 0)
        win32print.ClosePrinter(h_printer)
    except Exception as e:
        print(f"Error: Unable to set the number of copies. {e}")

def close_acrobat():
    PROCNAME = "Acrobat.exe"

    for proc in psutil.process_iter():
        # check whether the process name matches
        if proc.name() == PROCNAME:
            proc.terminate()

def print_pdf_to_printer_alternative(pdf_path, acrobat_path, printer_name='Xprinter XP-365B'):
    try:
        command = [
            acrobat_path,
            "/t", pdf_path,
            printer_name,
        ]
        subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    except Exception as e:
        print(f"Error: An unexpected error occurred while printing PDF. {e}")

def print_pdfs_from_excel(excel_file_path, acrobat_path, printer_name='Xprinter XP-365B'):
    if not acrobat_path:
        print("Error: Adobe Acrobat path not found. Please check if it's installed.")
        return

    try:
        df = pd.read_excel(excel_file_path)
        local_pdf_path_column_name = 'Local_PDF_Path_Column_Name'
        df[local_pdf_path_column_name] = df[local_pdf_path_column_name].astype(str)
        num_copies_column_name = 'Num_Copies'
        df[num_copies_column_name] = df[num_copies_column_name].astype(int)

        for index, row in df.iterrows():
            pdf_path = row[local_pdf_path_column_name]
            num_copies = row[num_copies_column_name]

            if isinstance(pdf_path, str) and os.path.exists(pdf_path) and pdf_path.lower().endswith('.pdf'):
                set_number_of_copies(printer_name, num_copies)
                print_pdf_to_printer_alternative(pdf_path, acrobat_path, printer_name)
                # Additional processing if needed

                # Close Acrobat after printing each PDF
                time.sleep(2)
                close_acrobat()
            else:
                print(f"Error: Invalid or non-existent PDF path: {pdf_path}")

    except Exception as e:
        print(f"Error: Unable to process Excel file. {e}")

# Replace 'C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\your_excel_file.xlsx' with the actual path to your Excel file
excel_file_path = r'C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\your_excel_file.xlsx'

# Optional: Specify the printer name
printer_name = 'Xprinter XP-365B'

acrobat_path = get_acrobat_path()

# Print PDFs using the modified code
print_pdfs_from_excel(excel_file_path, acrobat_path, printer_name)