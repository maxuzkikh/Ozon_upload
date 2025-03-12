import tkinter as tk
from tkinter import filedialog
import subprocess
import os
import win32com.client

def run_script20():
    subprocess.Popen(["python", "generate_import_Ozon.py"])

def run_script2():
    subprocess.Popen(["python", "generate_import_WB.py"])

def run_script3():
        subprocess.Popen(["python", "wb_get_demand.py"])

def run_script23():
    subprocess.Popen(["python", "demand_from_WB_without_my_stock.py"])

def run_script31():
    subprocess.Popen(["python", "demand_from_WB3.py"])

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

def run_script16():
    subprocess.Popen(["python", "fill_barcode_DB.py"])

def run_script17():
    # Get the current user's home directory
    user_home = os.path.expanduser("~")

    # Specify the path to the xlsx file using the user's home directory
    xlsx_file_path = os.path.join(user_home, "Documents", "GitHub", "Ozon_upload", "DTF_images")

    # Open the Excel file with the default program
    try:
        os.startfile(xlsx_file_path)
        print(f"Opened: {xlsx_file_path}")
    except FileNotFoundError:
        print(f"The specified Excel file was not found: {xlsx_file_path}")
    except Exception as e:
        print(f"An error occurred: {e}")

def run_script18():
    # Get the current user's home directory
    user_home = os.path.expanduser("~")

    # Specify the path to the xlsx file using the user's home directory
    xlsx_file_path = os.path.join(user_home, "Documents", "GitHub", "Ozon_upload","Tatulya","photoshop cards")

    # Open the Excel file with the default program
    try:
        os.startfile(xlsx_file_path)
        print(f"Opened: {xlsx_file_path}")
    except FileNotFoundError:
        print(f"The specified Excel file was not found: {xlsx_file_path}")
    except Exception as e:
        print(f"An error occurred: {e}")

def run_script19():
    # Get the current user's home directory
    user_home = os.path.expanduser("~")

    # Specify the path to the xlsx file using the user's home directory
    xlsx_file_path = os.path.join(user_home, "Documents", "GitHub", "Ozon_upload","create cards for OZON WB XLS","data to create Термонаклейки","Fill_data.xlsx")

    # Open the Excel file with the default program
    try:
        os.startfile(xlsx_file_path)
        print(f"Opened: {xlsx_file_path}")
    except FileNotFoundError:
        print(f"The specified Excel file was not found: {xlsx_file_path}")
    except Exception as e:
        print(f"An error occurred: {e}")


def run_script24():
    subprocess.Popen(["python", "find_in_stock.py"])

def run_script25():
    subprocess.Popen(["python", "add_placement.py"])

def run_script26():
    subprocess.Popen(["python", "print_max_a5.py"])

def run_script27():
    subprocess.Popen(["python", "telebot.py"])

def run_script28():
    subprocess.Popen(["python", "get_chat_id.py"])

def run_script29():
    subprocess.Popen(["python", "demand_from_WB2.py"])

def run_script30():
    subprocess.Popen(["python", "find_place_for_file.py"])

def run_script31():
    subprocess.Popen(["python", "sort_by_cities.py"])
    

root = tk.Tk()
root.title("Python Script Runner")


# Set window size to 500x500
root.geometry("400x900")

button6 = tk.Button(root, text="photoshop_barcode.py", command=run_script6)
button6.pack()



button3 = tk.Button(root, text="WB get_demand file to Maintop", command=run_script3)
button3.pack()

button4 = tk.Button(root, text="MainTop_print", command=run_script4)
button4.pack()

button5 = tk.Button(root, text="print_bar_code", command=run_script5)
button5.pack()

button7 = tk.Button(root, text="find_barcode_for_WB", command=run_script7)
button7.pack()


button9 = tk.Button(root, text="sort_by_type", command=run_script9)
button9.pack()

button29 = tk.Button(root, text="demand_from_WB учитывая только склад на ВБ", command=run_script29)
button29.pack()

button31 = tk.Button(root, text="demand_from_WB учитывая только свой склад", command=run_script31)
button31.pack()

button10 = tk.Button(root, text="demand_from_WB учитывая все склады", command=run_script10)
button10.pack()

button23 = tk.Button(root, text="demand_from_WB_without_my_stock не учитывая в наличии ничего", command=run_script23)
button23.pack()

button12 = tk.Button(root, text="Riin_printing", command=run_script12)
button12.pack()

button13 = tk.Button(root, text="print_bar_code_60cm", command=run_script13)
button13.pack()

button14 = tk.Button(root, text="update_stock", command=run_script14)
button14.pack()

button17 = tk.Button(root, text="1) open folder Upload final DTF Images", command=run_script17)
button17.pack()

button16 = tk.Button(root, text="2) Fill Data Base Description of New Cards", command=run_script16)
button16.pack()

button15 = tk.Button(root, text="3) run_photoshop_create_cards", command=run_script15)
button15.pack()

button18 = tk.Button(root, text="4) Export color Image for Ozon", command=run_script18)
button18.pack()

button19 = tk.Button(root, text="5) Fill Data to generate files for Ozon|WB", command=run_script19)
button19.pack()

button20 = tk.Button(root, text="6) output_data_for_Ozon", command=run_script20)
button20.pack()

button8 = tk.Button(root, text="7) find_barcode_from_file", command=run_script8)
button8.pack()

button21 = tk.Button(root, text="8) Fill Barcode generated FROM OZON", command=run_script16)
button21.pack()

button22 = tk.Button(root, text="9) output_data_for_WB", command=run_script2)
button22.pack()

button11 = tk.Button(root, text="10) photoshop_barcode_tati.py", command=run_script11)
button11.pack()

button24 = tk.Button(root, text="10) find_in_stock.py", command=run_script24)
button24.pack()

button25 = tk.Button(root, text="10) add_placement.py", command=run_script25)
button25.pack()

button26 = tk.Button(root, text="print_max_a5.py", command=run_script26)
button26.pack()

button27 = tk.Button(root, text="telebot.py", command=run_script27)
button27.pack()

button28 = tk.Button(root, text="get_chat_id.py", command=run_script28)
button28.pack()

button30 = tk.Button(root, text="find_place_for_file.py", command=run_script30)
button30.pack()

button31 = tk.Button(root, text="sort_by_cities.py", command=run_script31)
button31.pack()





root.mainloop()
