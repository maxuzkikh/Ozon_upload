import tkinter as tk
import subprocess

def run_script1():
    subprocess.Popen(["python", "generate_import_Ozon.py"])

def run_script2():
    subprocess.Popen(["python", "generate_import_WB.py"])

def run_script3():
    subprocess.Popen(["python", "MainTop_print.py"])

root = tk.Tk()
root.title("Python Script Runner")

# Set window size to 500x500
root.geometry("500x500")

button1 = tk.Button(root, text="output_data_for_Ozon", command=run_script1)
button1.pack()

button2 = tk.Button(root, text="output_data_for_WB", command=run_script2)
button2.pack()

button3 = tk.Button(root, text="MainTop_print", command=run_script3)
button3.pack()

root.mainloop()
