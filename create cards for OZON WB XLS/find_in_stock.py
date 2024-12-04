import shutil
import pandas as pd
from openpyxl import load_workbook
from openpyxl.styles import Font, Border, Side
from tkinter import Tk
from tkinter.filedialog import askopenfilename
import os

def select_excel_file():
    Tk().withdraw()  # Hide the root window
    filename = askopenfilename(filetypes=[("Excel files", "*.xlsx")])
    return filename

def copy_and_modify_excel(file_path):
    # Copy the original Excel file to the same folder
    folder_path = os.path.dirname(file_path)
    file_name = os.path.basename(file_path)
    new_file_path = os.path.join(folder_path, f"copy_{file_name}")
    shutil.copy(file_path, new_file_path)

    # Open the copied file to make modifications
    wb = load_workbook(new_file_path)
    ws = wb.active

    # Add 'место' to cell I3
    ws['I3'] = 'место'

    # Adjust the width of column I to 40
    ws.column_dimensions['I'].width = 10  # Set column I width to 40 units

    # Adjust the width of column G to 30
    ws.column_dimensions['G'].width = 20  # Set column G width to 30 units
    ws.column_dimensions['A'].width = 5
    ws.column_dimensions['B'].width = 8

    # Make columns G and I bold
    bold_font = Font(bold=True)
    ws['G3'].font = bold_font  # Make G3 bold
    ws['I3'].font = bold_font  # Make I3 bold

    # Save the workbook with the modifications
    wb.save(new_file_path)
    return new_file_path

def find_and_fill_values(file_path, barcode_file_path):
    # Define bold font here
    bold_font = Font(bold=True)
    
    # Define border style
    thin_border = Border(
        left=Side(style='thin'),
        right=Side(style='thin'),
        top=Side(style='thin'),
        bottom=Side(style='thin')
    )

    # Open the copied Excel file
    wb = load_workbook(file_path)
    ws = wb.active

    # Load the barcode Excel file into a DataFrame
    df = pd.read_excel(barcode_file_path)

    # Loop through the cells in column G starting from G4
    row = 4
    while True:
        article_value = ws[f'G{row}'].value
        if not article_value:  # Stop if we encounter an empty cell
            break

        # Find the matching row where Артикул продавца matches Артикул in the DataFrame
        match_row = df[df['Артикул'] == article_value]

        if not match_row.empty:
            # Get the 'место' value from the DataFrame (adjust column name as needed)
            место_value = match_row.iloc[0]['место']

            # Write the 'место' value in the corresponding cell in column I
            ws[f'I{row}'] = место_value
        else:
            # If no match is found, leave I{row} empty or set a default value
            ws[f'I{row}'] = 'Not Found'

        # Adjust the height of the row (e.g., set to 40 units)
        ws.row_dimensions[row].height = 45

        # Make the cells in columns G and I bold for each row
        ws[f'G{row}'].font = bold_font  # Make G bold for each row
        ws[f'I{row}'].font = bold_font  # Make I bold for each row

        # Add borders to the "место" cell in column I
        ws[f'I{row}'].border = thin_border

        row += 1

    # Save the changes to the file
    wb.save(file_path)
    print(f"Values for 'место' filled successfully in {file_path}")

if __name__ == "__main__":
    # Step 1: Select the Excel file
    excel_file = select_excel_file()

    # Step 2: Copy the file and add 'место' to cell I3
    copied_excel_file = copy_and_modify_excel(excel_file)

    # Step 3: Define the path to the barcode Excel file
    barcode_file_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx"

    # Step 4: Find the matching value in the barcode file and fill the result
    find_and_fill_values(copied_excel_file, barcode_file_path)
