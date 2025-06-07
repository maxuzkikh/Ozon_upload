@echo off
:: [1] Поднимаем права, если не админ
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [INFO] Запуск от имени администратора...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

:: [2] Переход в текущую директорию
cd /d "%~dp0"

:: [3] Настройки
set SCRIPT_NAME=Riin_printing.py
set ICON_FILE=icon.ico
set VENV_DIR=venv

:: [4] Создание виртуального окружения
if not exist "%VENV_DIR%" (
    echo [INFO] Создание виртуального окружения...
    python -m venv %VENV_DIR%
)

call %VENV_DIR%\Scripts\activate.bat

:: [5] Установка зависимостей
echo [INFO] Установка зависимостей...
pip install --upgrade pip
pip install numpy==1.23.5 pandas pyautogui pygetwindow pyperclip pyinstaller requests pillow keyboard

:: [6] Очистка старых сборок
rmdir /s /q build
rmdir /s /q dist
del /q Riin_printing.spec

:: [7] Генерация .spec с иконкой
echo [INFO] Генерация .spec...
pyi-makespec --onefile --console --icon=%ICON_FILE% %SCRIPT_NAME%

:: [8] Вставка requireAdministrator в .spec
echo [INFO] Добавление requireAdministrator...
powershell -Command "(Get-Content Riin_printing.spec) -replace 'console=True', 'console=True, requested_execution_level=\"requireAdministrator\"' | Set-Content Riin_printing.spec"

:: [9] Сборка
echo [INFO] Сборка .exe...
pyinstaller Riin_printing.spec

echo [DONE] Сборка завершена! Файл находится в dist\Riin_printing.exe
pause
