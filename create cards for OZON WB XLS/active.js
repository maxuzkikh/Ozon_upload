// Check if there is an active document open
if (app.documents.length > 0) {
    var myDocument = app.activeDocument;

    // Find the layer by name
    var exportLayer = myDocument.layers.getByName("export");

    // Check if the layer exists
    if (exportLayer) {
        // Set the found layer as active
        app.activeDocument.activeLayer = exportLayer;
    } else {
        // Alert if the layer doesn't exist
        alert("Layer 'export' not found.");
    }
} else {
    // Alert if no document is open
    alert("No document open in Photoshop.");
}
