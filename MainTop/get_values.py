import pandas as pd

# Read the WB_demand.xlsx file
wb_demand_df = pd.read_excel(r"C:\Users\Max\Documents\GitHub\Ozon_upload\MainTop\WB_demand.xlsx")

# Read the Data path barcode.xlsx file
barcode_df = pd.read_excel(r"C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx")

# Extract the unique values of "Артикул" from WB_demand.xlsx
articles = wb_demand_df["Артикул"].unique()

# Initialize empty lists to store the values
print_paths = []
rotates = []
layout_widths = []

# Iterate through each unique article
for article in articles:
    # Find the matching row in barcode_df based on the article value
    matching_row = barcode_df[barcode_df["Артикул"] == article]

    # If a matching row is found, extract the values of print_path, rotate, and layout_width
    if not matching_row.empty:
        print_paths.append(matching_row["путь к печати"].values[0])
        rotates.append(matching_row["Rotate"].values[0])
        layout_widths.append(matching_row["Раскладка в ширину"].values[0])
    else:
        # If no matching row is found, append None to indicate missing data
        print_paths.append(None)
        rotates.append(None)
        layout_widths.append(None)

# Create a new DataFrame to store the results
result_df = pd.DataFrame({
    "Артикул": articles,
    "путь к печати": print_paths,
    "Rotate": rotates,
    "Раскладка в ширину": layout_widths
})

# Print or further process the result DataFrame as needed
print(result_df)

for article in articles:
    process_image(print_path, rotate=rotate)
    offset += 200  # Decrement offset by 100 for the next iteration
    start += 1
