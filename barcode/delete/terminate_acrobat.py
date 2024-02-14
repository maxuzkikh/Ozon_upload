import psutil

def terminate_acrobat():
    try:
        for proc in psutil.process_iter(['pid', 'name']):
            if 'Acrobat.exe' in proc.info['name']:
                proc.terminate()
                proc.wait(timeout=5)  # Wait for termination
                print(f"Adobe Acrobat process with PID {proc.info['pid']} terminated.")
    except Exception as e:
        print(f"Error: Unable to terminate Adobe Acrobat process. {e}")

# Call the function to terminate Adobe Acrobat processes
terminate_acrobat()
