import os
import win32api

def open_and_print_image(file_path, printer_name, copies=1):
    # Проверяем существование файла
    if not os.path.exists(file_path):
        print(f"Ошибка: Файл '{file_path}' не найден.")
        return

    try:
        # Открываем файл в стандартном приложении Windows с указанием принтера
        for _ in range(copies):
            win32api.ShellExecute(
                0,  # hwnd
                "printto",  # Операция (печать с указанием принтера)
                file_path,  # Путь к файлу
                f'"{printer_name}"',  # Имя принтера
                ".",  # Рабочий каталог
                0  # Отображение окна (0 = скрыто)
            )
        print(f"Успешно отправлено {copies} копий на принтер '{printer_name}'.")
    except Exception as e:
        print(f"Ошибка при печати: {e}")

if __name__ == "__main__":
    file_path = r"C:\\Users\\Max\\Documents\\GitHub\\Ozon_upload\\инструкция\\инструкция_максА5.jpg"
    printer_name = "Kyocera ECOSYS P2040dn"  # Укажите имя вашего принтера
    copies = 10  # Количество копий

    open_and_print_image(file_path, printer_name, copies)
