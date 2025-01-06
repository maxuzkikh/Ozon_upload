from telegram import Update
from telegram.ext import Application, CommandHandler, CallbackContext

# Ваш токен от BotFather
TOKEN = "7639078062:AAGrUwjrqF_9SwfK93x5A4MecrZbd84pjoI"  # Замените на токен вашего бота


# Команда /start для получения CHAT_ID
async def start(update: Update, context: CallbackContext) -> None:
    # Получаем CHAT_ID пользователя
    chat_id = update.message.chat_id
    await update.message.reply_text(f"Ваш CHAT_ID: {chat_id}")
    print(f"CHAT_ID пользователя: {chat_id}")


# Основная функция запуска бота
def main():
    # Создаём объект приложения
    application = Application.builder().token(TOKEN).build()

    # Обработчик команды /start
    application.add_handler(CommandHandler("start", start))

    # Запускаем бота
    print("Бот запущен. Нажмите Ctrl+C для остановки.")
    application.run_polling()


if __name__ == "__main__":
    main()
