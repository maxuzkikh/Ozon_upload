import tkinter as tk
import subprocess

def run_script1():
    subprocess.Popen(["python", "generate_import_Ozon.py"])

def run_script2():
    subprocess.Popen(["python", "generate_import_WB.py"])

def run_script3():
    subprocess.Popen(["python", "script3.py"])

root = tk.Tk()
root.title("Python Script Runner")

button1 = tk.Button(root, text="output_data_for_Ozon", command=run_script1)
button1.pack()

button2 = tk.Button(root, text="output_data_for_WB", command=run_script2)
button2.pack()

button3 = tk.Button(root, text="Run Script 3", command=run_script3)
button3.pack()

root.mainloop()
