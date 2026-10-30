// ============================================================
// Отладочный скрипт: проверяем открытие файлов
// ============================================================

#target photoshop

(function () {
    // 1. Выбор файлов
    var files = File.openDialog("Выберите изображения", "Images: *.png, *.jpg, *.jpeg", true);
    if (!files || files.length === 0) {
        alert("Вы не выбрали файлы.");
        return;
    }
    if (!(files instanceof Array)) files = [files];

    // 2. Папка для сохранения
    var outFolder = Folder.selectDialog("Выберите папку для сохранения PNG");
    if (!outFolder) {
        alert("Вы не выбрали папку для сохранения.");
        return;
    }

    // 3. Стартовый номер
    var startNumber = prompt("Введите число, с которого начать нумерацию:", "1");
    if (startNumber === null) return;
    
    // 4. Проверяем, что скрипт дошел до цикла
    alert("Скрипт начинает работу. Выбрано файлов: " + files.length);

    var oldUnits = app.preferences.rulerUnits;
    var oldDialogs = app.displayDialogs;
    app.preferences.rulerUnits = Units.PIXELS;
    app.displayDialogs = DialogModes.NO;

    var shell = new ActiveXObject("WScript.Shell");

    try {
        // Открываем ПЕРВЫЙ файл для теста
        var f = files[0];
        
        // Проверка: существует ли файл физически
        if (!f.exists) {
            alert("ОШИБКА: Файл не найден по пути:\n" + f.fsName);
            return;
        }

        // Пытаемся открыть
        alert("Пытаюсь открыть файл:\n" + f.name);
        
        var srcDoc;
        try {
            srcDoc = app.open(f);
        } catch (openErr) {
            alert("ОШИБКА ПРИ ОТКРЫТИИ ФАЙЛА:\n" + openErr.message);
            return;
        }

        alert("Файл успешно открыт! Теперь нажимаю F7...");
        
        // Активация окна и нажатие клавиши
        app.bringToFront();
        $.sleep(500);
        
        try {
            shell.SendKeys("{F7}");
        } catch (keyErr) {
            alert("ОШИБКА ПРИ НАЖАТИИ F7:\n" + keyErr.message);
        }

        $.sleep(3500); 
        alert("Прошло 3.5 секунды. Проверяю новый документ...");

        var newDoc = app.activeDocument;
        
        if (newDoc.name === srcDoc.name) {
            alert("F7 НЕ СРАБОТАЛ. Новый документ не создан.\n\nПроверьте: в вашем Action есть команда 'New Document' и 'Paste'?");
        } else {
            alert("УСПЕХ! Новый документ создан: " + newDoc.name);
            
            // Сохраняем
            var outFile = new File(outFolder.fsName + "/1.png");
            newDoc.saveAs(outFile, new PNGSaveOptions(), true, Extension.LOWERCASE);
            alert("Файл сохранен как 1.png!");
        }

        // Закрываем всё
        while (app.documents.length > 0) {
            app.activeDocument.close(SaveOptions.DONOTSAVECHANGES);
        }

    } catch (err) {
        alert("КРИТИЧЕСКАЯ ОШИБКА:\n" + err.message);
    } finally {
        app.preferences.rulerUnits = oldUnits;
        app.displayDialogs = oldDialogs;
    }
})();