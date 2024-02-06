import fitz  # PyMuPDF

def resize_pdf(input_path, output_path, new_width, new_height):
    # Open the input PDF file
    pdf_document = fitz.open(input_path)

    # Iterate through each page and resize the canvas
    for page_num in range(pdf_document.page_count):
        page = pdf_document[page_num]

        # Get the existing page size
        current_width = page.rect.width
        current_height = page.rect.height

        # Create a new Rect object with the new size
        new_rect = fitz.Rect(0, 0, new_width, new_height)

        # Set the new canvas size
        page.rect = new_rect

        # Calculate scaling factors for the content on the page
        width_scale = new_width / current_width
        height_scale = new_height / current_height

        # Scale the content on the page
        page.scale(width_scale, height_scale)

    # Save the modified PDF to the output file
    pdf_document.save(output_path)

    # Close the PDF document
    pdf_document.close()

# Example usage:
input_pdf_path = 'C:/Users/Max/Documents/GitHub/Ozon_upload/generate_barcode/input.pdf'
output_pdf_path = 'C:/Users/Max/Documents/GitHub/Ozon_upload/generate_barcode/output_resized.pdf'
new_width_mm = 40
new_height_mm = 58

# Convert mm to points (1 inch = 25.4 mm, 1 inch = 72 points)
new_width_points = new_width_mm * 72 / 25.4
new_height_points = new_height_mm * 72 / 25.4

resize_pdf(input_pdf_path, output_pdf_path, new_width_points, new_height_points)
