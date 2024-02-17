#target photoshop

if (app.documents.length > 0) {
    var myDocument = app.activeDocument;
    var theName = myDocument.name.match(/(.*)\.[^\.]+$/)[1];
    var thePath = myDocument.path;
    var theLayer = myDocument.activeLayer;
    var selectedFiles = []; // Variable to store selected files for group "1"
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

    // Function to find the Smart Object layer within a group
    function findSmartObject(group) {
        for (var i = 0; i < group.layers.length; i++) {
            var layer = group.layers[i];
            if (layer.kind == LayerKind.SMARTOBJECT) {
                return layer;
            }
        }
        return null; // No Smart Object found in the group
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

        // Initialize smartObjectInGroup to reference the first Smart Object layer in the group
        var smartObjectInGroup = findSmartObject(theLayer);

        // Loop through groups dynamically
        var groupIndex = 1;
        var currentGroup;

        // Prompt user to select files if not already selected
        if (selectedFiles.length === 0) {
            selectedFiles = selectFiles("Please select files for Smart Object ");
        }
         for (var m = 0; m < selectedFiles.length; m++) {
            //theLayer.typename = "LayerSet";
            var theNewName = selectedFiles[m].name.match(/(.*)\.[^\.]+$/)[1];
            //alert("selectedFiles[m].name: " + selectedFiles[m].name);

            for (var groupIndex = 0; groupIndex <= theLayer.layers.length; groupIndex++) {
                var currentGroup = findGroupNamed(theLayer.layers, groupIndex.toString());

                // If currentGroup is found
                if (currentGroup) {
                    // Unhide current group
                    currentGroup.visible = true;

                    // Update smartObjectInGroup to reference the Smart Object layer in the current group
                    if (groupIndex === 1) {
                        smartObjectInGroup = findSmartObject(currentGroup);
                        smartObjectInGroup = replaceContents(selectedFiles[m], smartObjectInGroup);
                    }

                    // Set jpgSuffix
                    var jpgSuffix = "_" + groupIndex + ".jpg";

                    // JPG Options
                    var jpgSaveOptions = new JPEGSaveOptions();
                    jpgSaveOptions.embedColorProfile = true;
                    jpgSaveOptions.formatOptions = FormatOptions.STANDARDBASELINE;
                    jpgSaveOptions.matte = MatteType.NONE;
                    jpgSaveOptions.quality = 8;

                    // Save JPG
                    var jpgSaveFile = new File(jpgSaveFolder + "/" + theNewName + jpgSuffix);
                    myDocument.saveAs(jpgSaveFile, jpgSaveOptions, true, Extension.LOWERCASE);
                    currentGroup.visible = false;
                }
            }

            // If the next group is not found, switch to the "А4" group
            if (!currentGroup) {
                // Check if there is an active document open
                if (app.documents.length > 0) {
                    var myDocument = app.activeDocument;

                    // Find the layer by name
                    var exportLayer = myDocument.layers.getByName("export");
                    //alert("Group 'export' Selected.");

                    // Check if the layer exists
                    if (exportLayer) {
                        // Set the found layer as active
                        app.activeDocument.activeLayer = exportLayer;
                    } else {
                        // Alert if the layer doesn't exist
                        //alert("Layer 'export' not found.");
                    }
                } else {
                    // Alert if no document is open
                    //alert("No document open in Photoshop.");
                }
            }
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
    if (theSO == null || theSO == undefined) {
        alert("Smart Object not found.");
        return null; // Return null if Smart Object not found
    }

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
