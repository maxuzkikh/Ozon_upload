// Function to run when Photoshop is initialized
function main() {
    if (app.documents.length > 0) {
        var fileList = app.openDialog("Select files to process", "*.psd;*.jpg;*.jpeg;*.png;*.bmp;*.tif;*.tiff", true);
        if (fileList) {
            for (var i = 0; i < fileList.length; i++) {
                processFile(fileList[i]);
            }
        }
    } else {
        alert("No documents are currently open in Photoshop.");
    }
}

// Function to process each selected file
function processFile(file) {
    // Открываем исходный файл
    app.open(file);
    
    // Выполняем действие
    app.doAction("DTF3", "Default Actions");
    
    // Создаем выходную папку, если её нет
    var outputFolder = new Folder(file.parent + "/DTF_output");
    if (!outputFolder.exists) {
        outputFolder.create();
    }
    
    // Сохраняем активный документ
    try {
        var saveOptions = new TiffSaveOptions();
        saveOptions.embedColorProfile = true;
        saveOptions.imageCompression = TIFFEncoding.TIFFLZW;
        saveOptions.layers = true;
        
        var outputFile = new File(outputFolder + "/" + file.name.replace(/\.[^\.]+$/, "") + ".tif");
        app.activeDocument.saveAs(outputFile, saveOptions);
    } catch(e) {
        alert("Error saving: " + e.toString());
    }
    
    // ЗАКРЫВАЕМ ВСЕ ДОКУМЕНТЫ БЕЗ ИСКЛЮЧЕНИЯ
    while (app.documents.length > 0) {
        try {
            app.documents[0].close(SaveOptions.DONOTSAVECHANGES);
        } catch(e) {
            // Если не получается, выходим из цикла
            break;
        }
    }
}

// Call the main function
main();