import time
import pygetwindow as gw

def close_acrobat():
    # Give some time for Acrobat to open
    time.sleep(1)

    # Find the Adobe Acrobat window by title
    acrobat_window = gw.getWindowsWithTitle('Adobe Acrobat')[0]

    # Close the window
    acrobat_window.close()

if __name__ == "__main__":
    close_acrobat()
