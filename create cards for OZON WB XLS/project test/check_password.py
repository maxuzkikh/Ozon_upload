
import requests
import sys

GOOGLE_SHEETS_URL = "https://script.google.com/macros/s/AKfycbwgxVIPgLIEO_RUbp79GUkhem9sSNf2RTx2lp9EzuChZkgv-dnVekUdyz1B6_eiWCSg/exec"  # вставь свою ссылку

def get_password_from_google():
    try:
        r = requests.get(GOOGLE_SHEETS_URL, timeout=5)
        return r.text.strip()
    except:
        return None

def main():
    user_input = input("Введите пароль на сегодня: ")
    expected = get_password_from_google()

    if expected is None or expected == "INVALID":
        print("Ошибка связи с сервером.")
        sys.exit()

    if user_input != expected:
        print("Неверный пароль.")
        sys.exit()

    print("✅ Доступ разрешён. Запуск основного кода...")
    # Здесь можно вызвать основной функционал, например:
    # import my_script; my_script.run()
    print("👉 Выполняется защищённая логика.")

if __name__ == "__main__":
    main()
