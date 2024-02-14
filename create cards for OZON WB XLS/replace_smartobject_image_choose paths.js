#target photoshop

if (app.documents.length > 0) {
    var myDocument = app.activeDocument;
    var theName = myDocument.name.match(/(.*)\.[^\.]+$/)[1];
    var thePath = myDocument.path;
    var theLayer = myDocument.activeLayer;
    // JPG Options;
    var jpgSaveOptions = new JPEGSaveOptions();  
    jpgSaveOptions.embedColorProfile = true;  
    jpgSaveOptions.formatOptions = FormatOptions.STANDARDBASELINE;  
    jpgSaveOptions.matte = MatteType.NONE;  
    jpgSaveOptions.quality = 8;   

    // Check if layer is SmartObject;
    if (theLayer.kind != "LayerKind.SMARTOBJECT") {
        alert("selected layer is not a smart object")
    } else {
        // Select Files;
        if ($.os.search(/windows/i) != -1) {
            var theFiles = File.openDialog("please select files", "*.psd;*.tif;*.jpg", true)
        } else {
            var theFiles = File.openDialog("please select files", getFiles, true)
        };
        if (theFiles) {
            // Prompt user to enter suffix for JPG files
            var jpgSuffix = prompt("Enter suffix for JPG files (e.g., _1.jpg):");
            if (jpgSuffix) {
                // Prompt user to select destination folder
                var jpgSaveFolder = Folder.selectDialog("Select folder to save JPG files");
                if (jpgSaveFolder) {
                    for (var m = 0; m < theFiles.length; m++) {
                        // Replace SmartObject
                        theLayer = replaceContents(theFiles[m], theLayer);
                        var theNewName = theFiles[m].name.match(/(.*)\.[^\.]+$/)[1];
                        // Save JPG
                        var jpgSaveFile = new File(jpgSaveFolder + "/" + theNewName + jpgSuffix);
                        myDocument.saveAs(jpgSaveFile, jpgSaveOptions, true, Extension.LOWERCASE);
                    }
                }
            }
        }
    }
}

// Get PSDs, TIFs and JPGs from files
function getFiles(theFile) {
    if (theFile.name.match(/\.(psd|tif|jpg)$/i) != null || theFile.constructor.name == "Folder") {
        return true
    };
};

// Replace SmartObject Contents
function replaceContents(newFile, theSO) {
    app.activeDocument.activeLayer = theSO;
    // =======================================================
    var idplacedLayerReplaceContents = stringIDToTypeID("placedLayerReplaceContents");
    var desc3 = new ActionDescriptor();
    var idnull = charIDToTypeID("null");
    desc3.putPath(idnull, new File(newFile));
    var idPgNm = charIDToTypeID("PgNm");
    desc3.putInteger(idPgNm, 1);
    executeAction(idplacedLayerReplaceContents, desc3, DialogModes.NO);
    return app.activeDocument.activeLayer
};
