import os
import pandas as pd
from tkinter import Tk, filedialog

# Prompt user to select the first Excel file
root = Tk()
root.withdraw()  # Hide the root window
file1_path = filedialog.askopenfilename(filetypes=[("Excel files", "*.xlsx")])
root.destroy()  # Destroy the root window after file selection

# Read the first Excel file
#file1_path = r"C:\work\OZON_products\поставки\07.02.2024\WB_demand_г2.xlsx"
df1 = pd.read_excel(file1_path)

# Read the second Excel file
file2_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\create cards for OZON WB XLS\delete.xlsx"
df2 = pd.read_excel(file2_path)

# Merge data based on column "Артикул"
merged_df = pd.merge(df1, df2[['Артикул', 'штрихкод']], on='Артикул', how='left')

# Update the "штрихкод" column in the first DataFrame with values from the second DataFrame
df1['штрихкод'] = merged_df['штрихкод_y']

# Write the updated DataFrame back to the first Excel file
df1.to_excel(file1_path, index=False)

# Create a new DataFrame for the template import
new_df = pd.DataFrame()

# Fill the "баркод" column with values from "штрихкод" column
new_df['баркод'] = df1['штрихкод']

# Fill the "количество" column with values from "Num_Copies" column
new_df['количество'] = df1['Num_Copies']

# Extract the directory and filename from the first Excel file path
directory, filename = os.path.split(file1_path)

# Create the new Excel file name
new_filename = f"WB_поставка_{filename}"

# Create the path for the new Excel file
new_file_path = os.path.join(directory, new_filename)

# Write the new DataFrame to the new Excel file
new_df.to_excel(new_file_path, index=False)

print(f"New Excel file created: {new_file_path}")
