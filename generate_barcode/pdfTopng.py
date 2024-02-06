from pdf2image import convert_from_path

def pdf_to_png(pdf_path, output_folder):
    pages = convert_from_path(pdf_path)
    for i, page in enumerate(pages):
        # Save the image without resizing
        page.save(f"{output_folder}/page_{i+1}.png", "PNG")

# Specify the path to the PDF file you want to convert
pdf_file = r"C:\Users\Max\Documents\GitHub\Ozon_upload\generate_barcode\barcode.pdf"

# Specify the output folder where you want to save the PNG images
output_folder = r"C:\Users\Max\Documents\GitHub\Ozon_upload\generate_barcode\output_images"

# Call the function to convert PDF to PNG without resizing
pdf_to_png(pdf_file, output_folder)
