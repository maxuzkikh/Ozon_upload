import tkinter as tk
from tkinter import filedialog
import subprocess

def run_script1():
    subprocess.Popen(["python", "generate_import_Ozon.py"])

def run_script2():
    subprocess.Popen(["python", "generate_import_WB.py"])

def run_script3():
        subprocess.Popen(["python", "wb_get_demand.py"])

def run_script4():
    subprocess.Popen(["python", "MainTop_print.py"])

def run_script5():
    subprocess.Popen(["python", "print_bar_code.py"])

def run_script6():
    subprocess.Popen(["python", "photoshop_barcode.py"])

def run_script7():
    subprocess.Popen(["python", "find_barcode_for_WB.py"])

def run_script8():
    subprocess.Popen(["python", "find_barcode_from_file.py"])
def run_script9():
    subprocess.Popen(["python", "sort_by_type.py"])
def run_script10():
    subprocess.Popen(["python", "demand_from_WB.py"])


def run_script11():
    subprocess.Popen(["python", "photoshop_barcode_tati.py"])
def run_script12():
    subprocess.Popen(["python", "Riin_printing.py"])

def run_script14():
    subprocess.Popen(["python", "update_stock.py"])

def run_script13():
    subprocess.Popen(["python", "print_bar_code_60cm.py"])

def run_script15():
    subprocess.Popen(["python", "run_photoshop_create_cards.py"])

root = tk.Tk()
root.title("Python Script Runner")


# Set window size to 500x500
root.geometry("500x500")

button6 = tk.Button(root, text="photoshop_barcode.py", command=run_script6)
button6.pack()

button11 = tk.Button(root, text="photoshop_barcode_tati.py", command=run_script11)
button11.pack()

button1 = tk.Button(root, text="output_data_for_Ozon", command=run_script1)
button1.pack()

button2 = tk.Button(root, text="output_data_for_WB", command=run_script2)
button2.pack()

button3 = tk.Button(root, text="WB get_demand file to Maintop", command=run_script3)
button3.pack()

button4 = tk.Button(root, text="MainTop_print", command=run_script4)
button4.pack()

button5 = tk.Button(root, text="print_bar_code", command=run_script5)
button5.pack()

button7 = tk.Button(root, text="find_barcode_for_WB", command=run_script7)
button7.pack()

button8 = tk.Button(root, text="find_barcode_from_file", command=run_script8)
button8.pack()

button9 = tk.Button(root, text="sort_by_type", command=run_script9)
button9.pack()

button10 = tk.Button(root, text="demand_from_WB", command=run_script10)
button10.pack()

button12 = tk.Button(root, text="Riin_printing", command=run_script12)
button12.pack()

button13 = tk.Button(root, text="print_bar_code_60cm", command=run_script13)
button13.pack()

button14 = tk.Button(root, text="update_stock", command=run_script14)
button14.pack()

button14 = tk.Button(root, text="1) run_photoshop_create_cards", command=run_script15)
button14.pack()



root.mainloop()
