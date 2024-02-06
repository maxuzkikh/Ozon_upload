import PyPDF2


def edit_pdf(input_pdf_path, output_pdf_path, text):
    # Open the input PDF file
    with open(input_pdf_path, "rb") as input_file:
        reader = PyPDF2.PdfReader(input_file)
        writer = PyPDF2.PdfWriter()

        # Create a new page with the desired size
        new_page = PyPDF2.pdf.PageObject.createBlankPage(None, 6 * 28.35, 6 * 28.35)

        # Add text to the canvas
        new_page.merge_page(reader.pages[0])  # Merge with the first page of the input PDF
        new_page.add_text(text, 100, 100)  # Adjust position as needed

        # Add the modified page to the output PDF
        writer.add_page(new_page)

        # Write the output PDF file
        with open(output_pdf_path, "wb") as output_file:
            writer.write(output_file)


# Path to the input PDF file
input_pdf_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\generate_barcode\barcode.pdf"
# Path to the output PDF file
output_pdf_path = r"C:\Users\Max\Documents\GitHub\Ozon_upload\generate_barcode\output.pdf"
# Text to add to the PDF
text_to_add = "TEXT"

# Call the function to edit the PDF
edit_pdf(input_pdf_path, output_pdf_path, text_to_add)
