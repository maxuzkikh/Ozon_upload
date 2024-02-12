import pandas as pd

# Read data from the original Excel file
file_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx"
df_original = pd.read_excel(file_path)

# Create a new DataFrame with the desired column names
new_columns = [
    "Номер карточки",
    "Предмет",
    "Артикул производителя",
    "Бренд",
    "Цвет",
    "Пол",
    "Артикул продавца",
    "Артикул WB",
    "Наименование",
    "Баркод товара",
    "Цена",
    "Состав",
    "Описание",
    "Высота упаковки",
    "Длина упаковки",
    "Ширина упаковки",
    "Вес товара с упаковкой (г)",
    "Страна производства",
    "Медиафайлы"
]

df_new = pd.DataFrame(columns=new_columns)

# Copy values from original DataFrame to new DataFrame
for column in new_columns:
    if column in df_original.columns:
        df_new[column] = df_original[column]

# Write the new DataFrame to a new Excel file
output_file_name = r"C:\Users\Max\Documents\GitHub\Ozon_upload\создание карточки XLS\output_data_for_WB.xlsx"
df_new.to_excel(output_file_name, index=False)

print(f"Excel file '{output_file_name}' has been generated with data from '{file_path}'.")
