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
    var doc = app.open(file);
    doc.selection.selectAll();
    doc.selection.copy(true);
    //app.activeDocument.close(SaveOptions.DONOTSAVECHANGES);

    app.doAction("DTF3","Default Actions")


    //var newDoc = app.documents.add(doc.width, doc.height, doc.resolution, "New Document", NewDocumentMode.RGB, DocumentFill.TRANSPARENT);
    //app.activeDocument = newDoc;
    //app.activeDocument.paste();

//newDoc.resizeCanvas(newDoc.width.value * 2, newDoc.height.value * 2, AnchorPosition.MIDDLECENTER);

    //newDoc.changeMode(ChangeMode.CMYK);

        // Get the active layer
    //Layer activeLayer = doc.getActiveLayer();
    
    // Add a spot channel
    //var channelRef = newDoc.channels.add();
    // Select all
    //app.activeDocument.selection.selectAll();
    // Copy to the spot channel
    //app.activeDocument.selection.copy();
    // Add the selection to the spot channel
    //channelRef = app.activeDocument.channels.add();
    //app.activeDocument.paste();
    // Contract the selection
    //app.activeDocument.selection.contract(1);

    // Duplicate the spot channel
    //var channelRef2 = channelRef.duplicate();
    //channelRef.name = "W1";
    //channelRef2.name = "W2";

    var outputFolder = new Folder(file.parent + "/output");
    if (!outputFolder.exists) {
        outputFolder.create();
    }

    var saveOptions = new TiffSaveOptions();
    saveOptions.embedColorProfile = true;
    saveOptions.imageCompression = TIFFEncoding.TIFFLZW;
    saveOptions.layers = true;
    newDoc=app.activeDocument;
    var outputFile = new File(outputFolder + "/" + file.name.replace(/\.[^\.]+$/, "") + ".tif");
    newDoc.saveAs(outputFile, saveOptions);
    newDoc.close(SaveOptions.SAVECHANGES);
}

// Call the main function
main();

