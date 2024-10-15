import openpyxl
import pandas as pd
import shutil
import tkinter as tk
from tkinter import filedialog
import os

# Create a Tkinter root window
root = tk.Tk()
root.withdraw()  # Hide the root window

# Ask the user to select the data file
first_file_path = filedialog.askopenfilename(title="Select the first file", filetypes=[("Excel files", "*.xlsx"), ("All files", "*.*")])

# Specify the path for the existing template
template_file_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\create cards for OZON WB XLS\templates\WB_template.xlsx"

# Define the path for the new filled file (duplicate of the template)
new_template_file_path = os.path.join(os.path.dirname(template_file_path), "WB_template_filled.xlsx")

# Copy the template to a new file
shutil.copy(template_file_path, new_template_file_path)

# Load the first file (data file) with the header in the first row
try:
    first_df = pd.read_excel(first_file_path, header=0)  # First row as header
    print("First file data loaded successfully:")
    print(first_df.head())  # Print the first few rows to verify

    # Trim whitespace from column names
    first_df.columns = first_df.columns.str.strip()
    print("Columns in the first file after trimming spaces:", first_df.columns.tolist())  # Print all column names after trimming
except Exception as e:
    print(f"Error reading the first file: {e}")
    exit()

# Load the copied template file (newly created)
try:
    wb_output = openpyxl.load_workbook(new_template_file_path)
    ws_output = wb_output['Товары']  # Use the correct sheet name found earlier
    print("Template file loaded successfully.")
except Exception as e:
    print(f"Error loading the template file: {e}")
    exit()

# Define the mapping of columns from the first file to the template
column_mapping = {
    'Артикул продавца': 'Артикул продавца',
    'Наименование': 'Наименование',
    'Категория продавца': 'Категория продавца',
    'Бренд': 'Бренд',
    'Описание': 'Описание',
    'Фото': 'Фото',
    'Видео': 'Видео',
    'Баркоды': 'Баркоды',
    'Высота упаковки': 'Высота упаковки',
    'Длина упаковки': 'Длина упаковки',
    'Вес товара с упаковкой (г)': 'Вес товара с упаковкой (г)',  # Ensure correct mapping for multi-word columns
    'Цена': 'Цена',
}

# Function to find column index in the output sheet
def find_column(sheet, header_text):
    for col in sheet.iter_cols(1, sheet.max_column):
        for cell in col:
            if cell.value == header_text:
                return cell.column
    raise ValueError(f"Column '{header_text}' not found.")

# Fill the template starting from the 5th row (index 5) to keep the first four rows empty
for i, row in enumerate(first_df.itertuples(index=False), start=5):  # Start filling from the 5th row
    print(f"Processing row {i}: {row}")  # Print the entire row for debugging

    for second_col, first_col in column_mapping.items():
        if first_col in first_df.columns:
            value_to_fill = getattr(row, first_col, None)  # Get the value using getattr
            
            # Debugging output for missing values
            if pd.isna(value_to_fill):  # Check for NaN values
                print(f"No data to fill for '{first_col}'. Found value: {value_to_fill} (Row: {row})")
            else:
                try:
                    ws_output.cell(row=i, column=find_column(ws_output, second_col), value=value_to_fill)
                    print(f"Filled value for '{second_col}' from '{first_col}': {value_to_fill}.")
                except ValueError as e:
                    print(e)
        else:
            print(f"Column '{first_col}' not found in the first file. Available columns: {first_df.columns.tolist()}")

# After filling the template, check for the specific problematic column
print("Checking 'Артикул продавца' values:")
for j, row in enumerate(first_df['Артикул продавца']):
    print(f"Row {j}: {row}")

# Save the updated workbook to the new file
try:
    wb_output.save(new_template_file_path)
    print(f"New file created: {new_template_file_path}")
except Exception as e:
    print(f"Error saving the new file: {e}")
