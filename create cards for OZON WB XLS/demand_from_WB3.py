import pandas as pd
from tkinter import Tk, simpledialog
from tkinter.filedialog import askopenfilename
import os

# Функция для расчета "отправить"
def calculate_send(row):
    try:
        orders = float(row['Среднее количество заказов в день, шт'])
        days = float(row['дней'])
        stock_MY = float(row['Остатки МП, шт'])
        return max(orders * days - stock_MY, 0)
    except Exception:
        return 0

# Главная функция
def main():
    Tk().withdraw()

    try:
        # Выбор файла
        filename = askopenfilename(filetypes=[("Excel files", "*.xlsx")])
        if not filename:
            print("Файл не выбран. Выход.")
            return

        # Ввод дней
        days_input = simpledialog.askinteger("Период расчета", "Введите количество дней для расчета:", minvalue=1)
        if days_input is None:
            print("Период не введён. Выход.")
            return
    except Exception as e:
        print("Ошибка при выборе файла или вводе дней:", e)
        return

    try:
        # Чтение Excel-файла
        df = pd.read_excel(filename, sheet_name='Товары', header=1)

        # Выбор нужных столбцов
        df = df[['Артикул продавца', 'Среднее количество заказов в день, шт',
                 'Остатки склад ВБ, шт', 'Остатки МП, шт']]

        # Добавление колонок
        df['дней'] = days_input
        df['отправить'] = df.apply(calculate_send, axis=1)
        total_sum = df['отправить'].sum()

        # Переименовываем колонку
        df.rename(columns={'Артикул продавца': 'Артикул', 'отправить': 'Num_Copies'}, inplace=True)



        # Сохранение
        output_dir = os.path.dirname(filename)
        output_filename = os.path.join(output_dir, "спрос_" + os.path.basename(filename))
        df.to_excel(output_filename, index=False)

        print("Excel-файл успешно создан:", output_filename)
    except Exception as e:
        print("Ошибка обработки:", e)

# Запуск
if __name__ == "__main__":
    main()
