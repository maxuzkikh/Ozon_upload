# Import the necessary module
import win32com.client

# Connect to Adobe Illustrator
illustrator = win32com.client.Dispatch("Illustrator.Application")

# Get the active document
doc = illustrator.ActiveDocument

# Get the first artboard (index 1)
artboard = doc.Artboards[0]

# Set the new artboard width and height (in points)
artboard.Width = 5.8 * 28.3465  # 1 cm = 28.3465 points
artboard.Height = 4 * 28.3465

# Optional: Set the artboard position (if needed)
artboard.ArtboardRect = [0, 0, artboard.Width, -artboard.Height]

# Save the document (optional)
# doc.Save()

# Close Illustrator (optional)
# illustrator.Quit()
