import pandas as pd
from tkinter import Tk
from tkinter.filedialog import askopenfilename

# Open file dialog to choose Excel file
Tk().withdraw()  # Hide the Tkinter window
excel_file_path = askopenfilename(title="Select Excel file", filetypes=[("Excel files", "*.xlsx")])

# Read Excel file
df_main = pd.read_excel(excel_file_path)

# Read the barcode Excel file
barcode_file_path = "C:/Users/Max/Documents/GitHub/Ozon_upload/barcode/Data path barcode.xlsx"
df_barcode = pd.read_excel(barcode_file_path)

# Sort rows of df_barcode by "Тип упорядочить"
df_barcode_sorted = df_barcode.sort_values(by="Тип упорядочить")

# Merge dataframes on "Артикул"
merged_df = pd.merge(df_main, df_barcode_sorted, on="Артикул")

# Sort merged dataframe by "Тип упорядочить" and "Num_Copies"
merged_df_sorted = merged_df.sort_values(by=["Тип упорядочить", "Num_Copies"], ascending=[True, False])

# Filter out rows where Num_Copies is 0
merged_df_sorted = merged_df_sorted[merged_df_sorted['Num_Copies'] != 0]

# Select columns to keep in the final Excel file
columns_to_keep = list(df_main.columns) + ["Тип упорядочить"]

# Check if all columns in columns_to_keep are present in the DataFrame
columns_to_keep = [col for col in columns_to_keep if col in merged_df_sorted.columns]

# Save selected columns to a new Excel file
sorted_excel_file_path = excel_file_path.replace('.xlsx', '_sorted.xlsx')
merged_df_sorted[columns_to_keep].to_excel(sorted_excel_file_path, index=False)

print(f"Sorted data saved to {sorted_excel_file_path}")
