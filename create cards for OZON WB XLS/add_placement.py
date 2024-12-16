import win32com.client
import pandas as pd
from pathlib import Path

# Define file paths
excel_file_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\barcode\Data path barcode.xlsx"

# Define column names
pdf_path_column = "Local_PDF_Path_Column_Name"
place_column = "место"

# Load the Excel data
data = pd.read_excel(excel_file_path)

# Check for missing columns
if pdf_path_column not in data.columns or place_column not in data.columns:
    raise ValueError(f"The specified columns '{pdf_path_column}' or '{place_column}' are not in the Excel file.")

# Initialize Photoshop
ps_app = win32com.client.Dispatch("Photoshop.Application")
ps_app.Visible = True

# Process only the first row of the data
for index, row in data.iterrows():
    if index >= 1:
        break

    pdf_path = row[pdf_path_column]
    place = row[place_column]

    # Validate the PDF path
    if not isinstance(pdf_path, str) or not Path(pdf_path).is_file():
        print(f"Invalid or missing file path at row {index}: {pdf_path}")
        continue

    try:
        # Open the PDF file in Photoshop
        ps_doc = ps_app.Open(pdf_path)

        # Run the predefined action "create_white"
        ps_app.DoAction("create_white", "Default Actions")

        # Add text layer with the specified text
        text_content = f"место {place}"
        text_layer = ps_doc.ArtLayers.Add()
        text_layer.Kind = 2  # Text layer
        text_layer.TextItem.Contents = text_content

        # Position the text layer in the bottom right corner
        text_layer.TextItem.Position = [0.1, 3.7]  # Adjust offsets as needed

        # Save the updated PDF
        save_options = win32com.client.Dispatch("Photoshop.PDFSaveOptions")
        output_path = Path(pdf_path).with_name(f"{Path(pdf_path).stem}_updated.pdf")
        ps_doc.SaveAs(str(output_path), save_options)

        # Close the document
        ps_doc.Close()

        print(f"Updated PDF saved to: {output_path}")

    except Exception as e:
        print(f"Error processing file {pdf_path}: {e}")

# Quit Photoshop
ps_app.Quit()

print("Processing complete.")