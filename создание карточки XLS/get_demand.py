import pandas as pd
import tkinter as tk
from tkinter import messagebox

def sort_dataframe_by_artikul():
    # Load the Excel file skipping the first row as header
    file_path = r'C:\Users\Max\Documents\GitHub\Ozon_upload\MainTop\спрос с 25.01.2024 по 13.02.2024\13-2-2024 спрос с 25-1-2024 по 13-2-2024.xlsx'

    # Load the 'Товары' sheet once
    df = pd.read_excel(file_path, sheet_name='Товары', header=1)

    # Extract required columns and create 'Num_Copies' column
    new_df = pd.DataFrame({
        'Артикул': df['Артикул продавца'],
        'ВБ СПРОС': df['Среднее количество заказов в день, шт'],
    })

    # Ask user if they want to sort by 'Артикул'
    answer = messagebox.askyesno("Sort", "Do you want to sort rows by 'Артикул'?")

    if answer:
        # Sort DataFrame by 'Артикул' in Cyrillic
        new_df['Артикул'] = new_df['Артикул'].astype(str)  # Ensure 'Артикул' column is string type
        new_df['Артикул'] = new_df['Артикул'].str.lower()  # Convert Cyrillic letters to lowercase for sorting
        new_df = new_df.sort_values(by='Артикул')

    # Calculate 'Num_Copies' column in Python (B2*10)
    new_df['Num_Copies'] = new_df['ВБ СПРОС'] * 10
    
    # Write to a new Excel file
    output_file_path = r'C:\Users\Max\Documents\GitHub\Ozon_upload\MainTop\output_WB_demand.xlsx'
    new_df.to_excel(output_file_path, index=False)

# Create tkinter root window
root = tk.Tk()

# Hide the main window
root.withdraw()

# Call the function to sort the DataFrame
sort_dataframe_by_artikul()

# Close the tkinter root window
root.destroy()
