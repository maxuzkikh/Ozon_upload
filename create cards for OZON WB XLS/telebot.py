import os
import logging
from datetime import datetime
from telegram import Update, Bot
from telegram.ext import Application, CommandHandler, MessageHandler, filters, CallbackContext

# Настройка логирования
logging.basicConfig(
    level=logging.DEBUG,
    format="%(asctime)s - %(name)s - %(levelname)s - %(message)s",
    handlers=[logging.StreamHandler()]
)
logger = logging.getLogger(__name__)

# Настройки Telegram
TOKEN = "7639078062:AAGrUwjrqF_9SwfK93x5A4MecrZbd84pjoI"  # Замените на токен вашего бота
ADMIN_CHAT_ID = "319981505"  # Telegram ID администратора
BASE_DIR = "orders"  # Директория для хранения заказов

# Состояния пользователей
user_states = {}

# Убедимся, что папка для заказов существует
if not os.path.exists(BASE_DIR):
    os.makedirs(BASE_DIR)

# Команда: /start
async def start(update: Update, context: CallbackContext) -> None:
    user_id = update.message.chat_id
    username = update.message.chat.username or f"user_{user_id}"
    logger.info(f"Команда /start от пользователя {username} ({user_id})")

    # Инициализируем состояние пользователя
    if user_id not in user_states:
        user_states[user_id] = {"order_number": 1}
    else:
        user_states[user_id]["order_number"] += 1

    # Создаём папку для нового заказа
    order_number = user_states[user_id]["order_number"]
    user_folder = os.path.join(BASE_DIR, username)
    order_folder = os.path.join(user_folder, f"order_{order_number}")
    os.makedirs(order_folder, exist_ok=True)

    # Обновляем состояние пользователя
    user_states[user_id].update({
        "state": "awaiting_payment",
        "current_order_folder": order_folder,
        "photo_count": 0
    })
    logger.debug(f"Создана папка для нового заказа: {order_folder}")

    await update.message.reply_text(
        f"Добро пожаловать, {username}! Отправьте скриншот подтверждения оплаты, чтобы начать заказ."
    )

# Обработка сообщений с фотографиями
async def handle_photos(update: Update, context: CallbackContext) -> None:
    user_id = update.message.chat_id
    username = update.message.chat.username or f"user_{user_id}"

    if user_id not in user_states:
        await update.message.reply_text("Пожалуйста, сначала отправьте /start.")
        return

    current_state = user_states[user_id]["state"]
    order_folder = user_states[user_id]["current_order_folder"]

    if current_state == "awaiting_payment":
        # Save payment screenshot
        payment_screenshot = update.message.photo[-1]
        payment_file = await payment_screenshot.get_file()
        file_path = os.path.join(order_folder, "payment_screenshot.jpg")
        await payment_file.download_to_drive(file_path)
        logger.info(f"Скриншот оплаты сохранён: {file_path}")

        user_states[user_id]["state"] = "awaiting_photos"
        await update.message.reply_text("Подтверждение оплаты получено! Теперь отправьте фотографии для печати.")
    elif current_state == "awaiting_photos":
        # Save uploaded photo
        photo = update.message.photo[-1]
        photo_file = await photo.get_file()

        # Get the original file name
        original_file_name = photo_file.file_path.split("/")[-1]

        # Add suffix based on the count
        photo_count = user_states[user_id]["photo_count"] + 1
        suffix = f"_{photo_count}"
        base_name, ext = os.path.splitext(original_file_name)
        new_file_name = f"{base_name}{suffix}{ext}"

        # Save the photo with the new name
        file_path = os.path.join(order_folder, new_file_name)
        await photo_file.download_to_drive(file_path)

        # Update the photo count
        user_states[user_id]["photo_count"] = photo_count
        logger.info(f"Фото сохранено: {file_path}, всего загружено: {photo_count}")

        # Ask user if they want to complete the upload
        await update.message.reply_text(
            f"Фото сохранено как: {new_file_name}. Всего загружено: {photo_count}.\n\n"
            "Вы загрузили все фото? Если да, отправьте команду /complete, чтобы завершить заказ и отправить фотографии на печать."
        )
    else:
        await update.message.reply_text("Что-то пошло не так. Попробуйте снова или начните новый заказ с помощью /start.")


# Завершение заказа
async def complete_order(update: Update, context: CallbackContext) -> None:
    user_id = update.message.chat_id
    username = update.message.chat.username or f"user_{user_id}"

    if user_states[user_id]["state"] != "awaiting_photos":
        await update.message.reply_text("Вы ещё не начали заказ. Чтобы начать, отправьте /start.")
        return

    order_folder = user_states[user_id]["current_order_folder"]
    photo_count = user_states[user_id]["photo_count"]

    now = datetime.now()
    formatted_time = now.strftime("%Y-%m-%d %H:%M:%S")

    bot = Bot(TOKEN)
    await bot.send_message(
        chat_id=ADMIN_CHAT_ID,
        text=(
            f"Новый заказ завершён!\n"
            f"Пользователь: {username}\n"
            f"Дата и время: {formatted_time}\n"
            f"Всего фото: {photo_count}\n"
            f"Путь к заказу: {order_folder}"
        )
    )

    user_states[user_id]["state"] = "awaiting_payment"
    user_states[user_id]["photo_count"] = 0
    logger.info(f"Заказ пользователя {username} завершён.")

    await update.message.reply_text(
        "Заказ завершён! Для нового заказа отправьте /start."
    )

# Основная функция запуска
def main():
    application = Application.builder().token(TOKEN).build()

    application.add_handler(CommandHandler("start", start))
    application.add_handler(CommandHandler("complete", complete_order))
    application.add_handler(MessageHandler(filters.PHOTO, handle_photos))

    application.run_polling()

if __name__ == "__main__":
    main()
