import pandas as pd
import tkinter as tk
from tkinter import filedialog
import os

# Function to select a file using a dialog window
def select_file():
    root = tk.Tk()
    root.withdraw()  # Hide the main window
    file_path = filedialog.askopenfilename()
    return file_path

# Step 1: Select the first file (stocks.xlsx)
print("Please select the stocks.xlsx file.")
stocks_file = select_file()

# Step 2: Select the second file (Таня_печать.xlsx)
print("Please select the Таня_печать.xlsx file.")
tanya_file = select_file()

# Step 3: Read the Excel files
stocks_df = pd.read_excel(stocks_file)
tanya_df = pd.read_excel(tanya_file)

# Step 4: Merge the dataframes on matching 'Артикул продавца' and 'Артикул'
merged_df = pd.merge(stocks_df, tanya_df, left_on='Артикул продавца', right_on='Артикул', how='left')

# Step 5: Update 'Количество' in stocks_df with the sum of 'Количество' and 'Num_Copies' from tanya_df
stocks_df['Количество'] = merged_df['Количество'] + merged_df['Num_Copies'].fillna(0)

# Step 6: Save the updated dataframe in the same directory as Таня_печать.xlsx
output_dir = os.path.dirname(tanya_file)
output_file = os.path.join(output_dir, 'stock_updated.xlsx')
stocks_df.to_excel(output_file, index=False)

print(f"The updated stock file has been saved as {output_file}.")
