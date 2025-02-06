import os
import win32com.client
import tkinter as tk
from tkinter import filedialog

# Initialize Photoshop COM object
def open_photoshop():
    try:
        ps_app = win32com.client.Dispatch("Photoshop.Application")
        ps_app.Visible = True  # Show Photoshop window
        return ps_app
    except Exception as e:
        print(f"Error opening Photoshop: {e}")
        return None

# Run the Photoshop action on the opened file
def run_photoshop_action(ps_app, file_path, action_name="preview_image", action_set="Default Actions"):
    try:
        doc = ps_app.Open(file_path)  # Open the file in Photoshop
        ps_app.DoAction(action_name, action_set)  # Run the action
        return doc
    except Exception as e:
        print(f"Error processing {file_path}: {e}")
        return None

# Save file with "_preview" added to the name
def save_as_preview(doc, original_path):
    try:
        folder, filename = os.path.split(original_path)
        name, ext = os.path.splitext(filename)
        preview_path = os.path.join(folder, f"{name}_preview{ext}")
        
        options = win32com.client.Dispatch("Photoshop.JPEGSaveOptions")
        options.Quality = 12  # Set max quality
        
        doc.SaveAs(preview_path, options, True)  # Save as a new file
        doc.Close(2)  # Close document, saving changes
        print(f"Saved: {preview_path}")
    except Exception as e:
        print(f"Error saving {original_path}: {e}")

# Open file selection dialog
def select_files():
    root = tk.Tk()
    root.withdraw()  # Hide Tkinter root window
    file_paths = filedialog.askopenfilenames(title="Select image files",
                                             filetypes=[("Images", "*.jpg;*.jpeg;*.png;*.tif;*.tiff;*.psd")])
    return file_paths

# Main execution
def main():
    files = select_files()
    if not files:
        print("No files selected.")
        return

    ps_app = open_photoshop()
    if not ps_app:
        return

    for file in files:
        doc = run_photoshop_action(ps_app, file)
        if doc:
            save_as_preview(doc, file)

    print("Processing completed.")

if __name__ == "__main__":
    main()
