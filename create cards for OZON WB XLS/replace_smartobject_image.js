#target photoshop

if (app.documents.length > 0) {
    var myDocument = app.activeDocument;
    var theName = myDocument.name.match(/(.*)\.[^\.]+$/)[1];
    var thePath = myDocument.path;
    var theLayer = myDocument.activeLayer;
    var selectedFilesForGroup1 = []; // Variable to store selected files for group "1"
    var jpgSaveFolder; // Variable to store the selected folder to save JPG files

    // Function to find the group named "1", "2", "3", etc. within the selected group
    function findGroupNamed(layers, groupName) {
        for (var i = 0; i < layers.length; i++) {
            var layer = layers[i];
            if (layer.typename == "LayerSet" && layer.name == groupName) {
                return layer;
            }
        }
        return null; // No group with the specified name found
    }

    // Function to process group and replace Smart Object
    function processGroup(group, jpgSaveOptions, jpgSuffix, selectedFiles) {
        var smartObjectInGroup = null;
        for (var j = 0; j < group.layers.length; j++) {
            if (group.layers[j].kind == "LayerKind.SMARTOBJECT") {
                smartObjectInGroup = group.layers[j];
                break;
            }
        }

        if (!smartObjectInGroup) {
            alert("No Smart Object found within group '" + group.name + "'.");
            return;
        }

        if (!selectedFiles || selectedFiles.length === 0) {
            alert("No files selected.");
            return;
        }

        for (var m = 0; m < selectedFiles.length; m++) {
            // Replace SmartObject
            smartObjectInGroup = replaceContents(selectedFiles[m], smartObjectInGroup);
            var theNewName = selectedFiles[m].name.match(/(.*)\.[^\.]+$/)[1];
            // Save JPG
            var jpgSaveFile = new File(jpgSaveFolder + "/" + theNewName + jpgSuffix);
            myDocument.saveAs(jpgSaveFile, jpgSaveOptions, true, Extension.LOWERCASE);
        }
    }

    // Check if layer is a group
    if (theLayer.typename != "LayerSet") {
        alert("Selected layer is not a group.");
    } else {
        // Prompt user to select destination folder
        jpgSaveFolder = Folder.selectDialog("Select folder to save JPG files");
        if (!jpgSaveFolder) {
            alert("No folder selected. Exiting script.");
            exit(); // Exit script
        }

        // Loop through groups dynamically
        var groupIndex = 1;
        var currentGroup;
        while (currentGroup = findGroupNamed(theLayer.layers, groupIndex.toString())) {
            // Unhide current group
            currentGroup.visible = true;

            // Set jpgSuffix
            var jpgSuffix = "_" + groupIndex + ".jpg";

            // JPG Options
            var jpgSaveOptions = new JPEGSaveOptions();
            jpgSaveOptions.embedColorProfile = true;
            jpgSaveOptions.formatOptions = FormatOptions.STANDARDBASELINE;
            jpgSaveOptions.matte = MatteType.NONE;
            jpgSaveOptions.quality = 8;

            // Prompt user to select files for the current group if not already selected
            if (selectedFilesForGroup1.length === 0) {
                selectedFilesForGroup1 = selectFiles("Please select files for group " + groupIndex);
            }

            // Process current group
            processGroup(currentGroup, jpgSaveOptions, jpgSuffix, selectedFilesForGroup1);

            groupIndex++;
        }
    }
}

// Function to select files
function selectFiles(dialogTitle) {
    if ($.os.search(/windows/i) != -1) {
        return File.openDialog(dialogTitle, "*.psd;*.tif;*.jpg", true)
    } else {
        return File.openDialog(dialogTitle, getFiles, true)
    };
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
