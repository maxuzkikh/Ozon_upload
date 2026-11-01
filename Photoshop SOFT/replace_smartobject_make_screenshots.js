#target photoshop

// Функция для чтения команды от Python
function readCommand() {
    var tempDir = Folder.temp;
    var commandFile = new File(tempDir + "/photoshop_command.txt");
    var resultFile = new File(tempDir + "/photoshop_result.txt");
    
    if (!commandFile.exists) {
        return null;
    }
    
    commandFile.open("r");
    var commandText = commandFile.read();
    commandFile.close();
    commandFile.remove();
    
    try {
        var command = eval("(" + commandText + ")");
        return command;
    } catch(e) {
        $.writeln("Ошибка парсинга JSON: " + e);
        return null;
    }
}

// Функция отправки результата
function sendResult(success) {
    var tempDir = Folder.temp;
    var resultFile = new File(tempDir + "/photoshop_result.txt");
    
    resultFile.open("w");
    resultFile.write(success ? "OK" : "ERROR");
    resultFile.close();
}

// Функция создания скриншота через Python
function takeScreenshot(filename, screenshotFolder) {
    var tempDir = Folder.temp;
    var screenshotCommandFile = new File(tempDir + "/photoshop_screenshot_command.txt");
    var screenshotResultFile = new File(tempDir + "/photoshop_screenshot_result.txt");
    
    if (screenshotCommandFile.exists) screenshotCommandFile.remove();
    if (screenshotResultFile.exists) screenshotResultFile.remove();
    
    screenshotCommandFile.open("w");
    screenshotCommandFile.write(filename);
    screenshotCommandFile.close();
    
    for (var i = 0; i < 30; i++) {
        $.sleep(500);
        if (screenshotResultFile.exists) {
            screenshotResultFile.open("r");
            var result = screenshotResultFile.read();
            screenshotResultFile.close();
            screenshotResultFile.remove();
            return result == "OK";
        }
    }
    
    return false;
}

// Основная функция
function main() {
    if (app.documents.length === 0) {
        alert("Нет открытых документов Photoshop.\n\nПожалуйста, откройте PSD файл.");
        return;
    }
    
    var command = readCommand();
    if (!command || command.action != 'process_article') {
        return;
    }
    
    var screenshotFolder = command.screenshot_folder;
    var article = command.article;
    var sku = command.sku;
    var imageFiles = command.image_files;
    
    var myDocument = app.activeDocument;
    var theLayer = myDocument.activeLayer;
    
    if (theLayer.typename != "LayerSet") {
        alert("Пожалуйста, выберите группу с подгруппами 1, 2, 3...");
        sendResult(false);
        return;
    }
    
    // Получаем числовые группы
    var numericGroups = [];
    for (var i = 0; i < theLayer.layers.length; i++) {
        var layer = theLayer.layers[i];
        if (layer.typename == "LayerSet" && !isNaN(parseInt(layer.name))) {
            numericGroups.push(layer);
        }
    }
    
    if (numericGroups.length === 0) {
        alert("Не найдено групп с номерами");
        sendResult(false);
        return;
    }
    
    // Сортируем группы
    numericGroups.sort(function(a, b) {
        return parseInt(a.name) - parseInt(b.name);
    });
    
    // Сохраняем видимость
    var originalVisibility = [];
    for (var g = 0; g < numericGroups.length; g++) {
        originalVisibility[g] = numericGroups[g].visible;
    }
    
    var savedCount = 0;
    var totalToProcess = imageFiles.length * numericGroups.length;
    var currentCount = 0;
    
    // Проходим по файлам и группам
    for (var f = 0; f < imageFiles.length; f++) {
        var imageFile = new File(imageFiles[f]);
        var imageName = imageFile.name.match(/(.*)\.[^\.]+$/)[1];
        
        for (var g = 0; g < numericGroups.length; g++) {
            currentCount++;
            var groupNumber = numericGroups[g].name;
            
            // Показываем только текущую группу
            for (var h = 0; h < numericGroups.length; h++) {
                numericGroups[h].visible = false;
            }
            numericGroups[g].visible = true;
            
            // Ищем и заменяем Smart Object
            var smartObject = null;
            for (var i = 0; i < numericGroups[g].layers.length; i++) {
                if (numericGroups[g].layers[i].kind == LayerKind.SMARTOBJECT) {
                    smartObject = numericGroups[g].layers[i];
                    break;
                }
            }
            
            if (smartObject) {
                app.activeDocument.activeLayer = smartObject;
                var idplacedLayerReplaceContents = stringIDToTypeID("placedLayerReplaceContents");
                var desc = new ActionDescriptor();
                desc.putPath(charIDToTypeID("null"), imageFile);
                desc.putInteger(charIDToTypeID("PgNm"), 1);
                executeAction(idplacedLayerReplaceContents, desc, DialogModes.NO);
            }
            
            app.refresh();
            $.sleep(300);
            
            // Скриншот
            var screenshotName = article + "_" + sku + "_" + imageName + "_group" + groupNumber + ".png";
            $.writeln(currentCount + "/" + totalToProcess + ": " + screenshotName);
            
            if (takeScreenshot(screenshotName, screenshotFolder)) {
                savedCount++;
            }
            
            $.sleep(200);
        }
    }
    
    // Восстанавливаем видимость
    for (var g = 0; g < numericGroups.length; g++) {
        numericGroups[g].visible = originalVisibility[g];
    }
    
    sendResult(savedCount == totalToProcess);
}

main();