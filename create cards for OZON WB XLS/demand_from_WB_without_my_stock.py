import pandas as pd
from tkinter import Tk
from tkinter.filedialog import askopenfilename
import os
from tkinter import simpledialog

# Function to calculate 'отправить' column
def calculate_send(row):
    try:
        orders = float(row['Среднее количество заказов в день, шт'])
        days = float(row['дней'])
        stock = float(row['Остатки склад ВБ, шт'])
        stock_MY = float(row['Остатки МП, шт'])

        # Perform the calculation
        result = round(orders * days)
        return max(result, 0)  # If result is negative, return 0
    except ValueError:
        # Handle non-numeric values
        return 0


# Prompt user to enter number of days
Tk().withdraw()
try:
    filename = askopenfilename(filetypes=[("Excel files", "*.xlsx")])
    if not filename:
        print("No file selected. Exiting.")
        exit()
    
    # Ask user for number of days
    days_input = simpledialog.askinteger("Период расчета", "Введите количество дней для расчета:", minvalue=1)
    if days_input is None:
        print("Период не введён. Выход.")
        exit()
except Exception as e:
    print("Ошибка при выборе файла или вводе дней:", e)
    exit()

# Function to fill 'дней' column
def fill_days(row):
    return days_input


# Function to fill 'сумма' column
def fill_sum(df):
    return df['отправить'].sum()


# Prompt user to select Excel file
Tk().withdraw()
try:
    filename = askopenfilename(filetypes=[("Excel files", "*.xlsx")])
except FileNotFoundError:
    print("No file selected. Exiting.")
    exit()

try:
    # Read the specific sheet
    df = pd.read_excel(filename, sheet_name='Товары', header=1)  # Assuming headers start from the second row

    # Select required columns
    df = df[['Артикул продавца', 'Среднее количество заказов в день, шт', 'Остатки склад ВБ, шт', 'Остатки МП, шт']]

    # Calculate 'отправить' column
    df['дней'] = df.apply(fill_days, axis=1)  # Fill 'дней' column first
    df['отправить'] = df.apply(calculate_send, axis=1)

    # Fill 'сумма' column
    sum_value = fill_sum(df)
    df['сумма'] = sum_value

    # Extract directory path from the opened file's full path
    output_dir = os.path.dirname(filename)

    # Generate the output filename
    output_filename = os.path.join(output_dir, "спрос_" + os.path.basename(filename))

    # Write the modified dataframe to a new Excel file
    df.to_excel(output_filename, index=False)
    print("Excel file created successfully:", output_filename)
except Exception as e:
    print("An error occurred:", e)
