// replace_smartobject.jsx
// Заменяет Smart Object в папке export -> 1 (без задержки)

#target photoshop

var resultFile = new File(Folder.temp + "/photoshop_result.txt");
var logFile = new File(Folder.temp + "/photoshop_debug.txt");

function log(message) {
    logFile.open("a");
    logFile.writeln(new Date().toLocaleTimeString() + " - " + message);
    logFile.close();
}

function main() {
    log("=== START ===");
    
    // Получаем активный документ
    var doc = app.activeDocument;
    if (!doc) {
        log("ERROR: No active document");
        resultFile.open("w");
        resultFile.write("ERROR");
        resultFile.close();
        return;
    }
    
    log("Document: " + doc.name);
    
    // Ищем папку "export"
    var exportFolder = null;
    for (var i = 0; i < doc.layers.length; i++) {
        var layer = doc.layers[i];
        if (layer.typename == "LayerSet" && layer.name.toLowerCase() == "export") {
            exportFolder = layer;
            log("Found 'export' folder");
            break;
        }
    }
    
    if (!exportFolder) {
        log("ERROR: 'export' folder not found");
        resultFile.open("w");
        resultFile.write("ERROR");
        resultFile.close();
        return;
    }
    
    // Ищем папку "1" внутри export
    var folder1 = null;
    for (var i = 0; i < exportFolder.layers.length; i++) {
        var layer = exportFolder.layers[i];
        if (layer.typename == "LayerSet" && layer.name == "1") {
            folder1 = layer;
            log("Found folder '1' inside export");
            break;
        }
    }
    
    if (!folder1) {
        log("ERROR: Folder '1' not found inside export");
        log("Available folders in export:");
        for (var i = 0; i < exportFolder.layers.length; i++) {
            log("  - " + exportFolder.layers[i].name);
        }
        resultFile.open("w");
        resultFile.write("ERROR");
        resultFile.close();
        return;
    }
    
    // Ищем Smart Object в папке "1"
    var smartObject = null;
    for (var i = 0; i < folder1.layers.length; i++) {
        var layer = folder1.layers[i];
        log("Layer in folder 1: " + layer.name + " (kind: " + layer.kind + ")");
        
        if (layer.kind == LayerKind.SMARTOBJECT) {
            smartObject = layer;
            log("Found Smart Object: " + layer.name);
            break;
        }
    }
    
    if (!smartObject) {
        log("ERROR: Smart Object not found in folder '1'");
        resultFile.open("w");
        resultFile.write("ERROR");
        resultFile.close();
        return;
    }
    
    // Выделяем Smart Object
    doc.activeLayer = smartObject;
    log("Smart Object selected");
    
    // Путь к картинке из временного файла
    var imagePathFile = new File(Folder.temp + "/photoshop_image_path.txt");
    var imagePath = null;
    
    if (imagePathFile.exists) {
        imagePathFile.open("r");
        imagePath = imagePathFile.read();
        imagePathFile.close();
        imagePathFile.remove();
        log("Image path from file: " + imagePath);
    }
    
    if (!imagePath) {
        log("ERROR: No image path provided");
        resultFile.open("w");
        resultFile.write("ERROR");
        resultFile.close();
        return;
    }
    
    var imageFile = new File(imagePath);
    
    if (!imageFile.exists) {
        log("ERROR: Image file not found: " + imagePath);
        resultFile.open("w");
        resultFile.write("ERROR");
        resultFile.close();
        return;
    }
    
    // Заменяем Smart Object (без дополнительной задержки)
    try {
        var idplacedLayerReplaceContents = stringIDToTypeID("placedLayerReplaceContents");
        var desc = new ActionDescriptor();
        desc.putPath(charIDToTypeID("null"), imageFile);
        desc.putInteger(charIDToTypeID("PgNm"), 1);
        executeAction(idplacedLayerReplaceContents, desc, DialogModes.NO);
        
        log("REPLACEMENT SUCCESS!");
        resultFile.open("w");
        resultFile.write("OK");
    } catch(e) {
        log("REPLACEMENT ERROR: " + e);
        resultFile.open("w");
        resultFile.write("ERROR");
    }
    
    resultFile.close();
    log("=== END ===");
}

main();