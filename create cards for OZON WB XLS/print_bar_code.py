import os
import shlex
import win32print
import psutil
import pandas as pd
import subprocess
import winreg
import time
import tkinter as tk
from tkinter import filedialog

def get_acrobat_path():
    try:
        base_key = winreg.HKEY_LOCAL_MACHINE
        if os.environ.get('PROGRAMFILES(X86)'):
            acrobat_key = r"SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Acrobat.exe"
        else:
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

    try:
        for proc in psutil.process_iter(['pid', 'name']):
            if proc.info['name'] == PROCNAME:
                proc.terminate()
    except Exception as e:
        print(f"Error: Unable to terminate Acrobat process. {e}")

def print_pdf_to_printer(pdf_path, acrobat_path, printer_name):
    try:
        print("PDF Path:", pdf_path, " Printer Name:", printer_name)
        command = [
            acrobat_path,
            "/t", pdf_path,
            printer_name,
        ]
        subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    except Exception as e:
        print(f"Error: An unexpected error occurred while printing PDF. {e}")

def find_pdf_path_by_articul(articul, barcode_excel_path):
    try:
        barcode_df = pd.read_excel(barcode_excel_path)
        barcode_df['Артикул'] = barcode_df['Артикул'].astype(str)

        # Find the row where 'Артикул' matches the provided value
        row = barcode_df[barcode_df['Артикул'] == articul].iloc[0]

        # Return the path from the 'Local_PDF_Path_Column_Name'
        pdf_path = row['Local_PDF_Path_Column_Name'] if 'Local_PDF_Path_Column_Name' in row else None

        if pdf_path and pdf_path.lower().endswith('.pdf'):
            return pdf_path
        else:
            print(f"Error: Invalid or non-existent PDF path for Артикул {articul}")
            return None

    except Exception as e:
        print(f"Error: Unable to find PDF path for Артикул {articul}. {e}")
        return None

def print_pdfs_from_excel_with_path_lookup(excel_file_path, barcode_excel_path, acrobat_path,
                                           printer_name='Xprinter XP-365B'):
    if not acrobat_path:
        print("Error: Adobe Acrobat path not found. Please check if it's installed.")
        return

    try:
        df = pd.read_excel(excel_file_path)
        articul_column_name = 'Артикул'
        df[articul_column_name] = df[articul_column_name].astype(str)
        num_copies_column_name = 'Num_Copies'
        df[num_copies_column_name] = pd.to_numeric(df[num_copies_column_name], errors='coerce').astype('Int64')

        for index, row in df.iterrows():
            articul = row[articul_column_name]
            num_copies = row[num_copies_column_name]

            if pd.notna(num_copies) and num_copies > 0:  # Skip if num_copies is 0 or NaN
                pdf_path = find_pdf_path_by_articul(articul, barcode_excel_path)

                if pdf_path:
                    set_number_of_copies(printer_name, num_copies)
                    print_pdf_to_printer(pdf_path, acrobat_path, printer_name)

                    # Wait for the print job to complete (adjust time if needed)
                    time.sleep(3)  # Adjust the duration as needed

                    # Additional processing if needed
                    # ...

                    close_acrobat()
                else:
                    print(f"Error: Invalid or non-existent PDF path for Артикул {articul}")
            else:
                print(f"Skipping PDF printing for Артикул {articul} due to Num_Copies being 0 or NaN.")

    except Exception as e:
        print(f"Error: Unable to process Excel file. {e}")

# Create tkinter root window
root = tk.Tk()
root.withdraw()  # Hide the main window

# Open file dialog to select the file
excel_file_path = filedialog.askopenfilename(title="Select File")

# Close the tkinter root window
root.destroy()


# Replace 'C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\your_excel_file.xlsx' with the actual path to your Excel file
#excel_file_path = r'C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\temp.xlsx'

# Specify the path to 'Data path barcode.xlsx'
barcode_excel_path = r'C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx'

# Optional: Specify the printer name
printer_name = 'Xprinter XP-365B'

acrobat_path = get_acrobat_path()

# Print PDFs using the modified code
print_pdfs_from_excel_with_path_lookup(excel_file_path, barcode_excel_path, acrobat_path, printer_name)


