// MINIMAL WORKING SCRIPT - No regex errors

#target photoshop

function exportGroups() {
    try {
        var doc = app.activeDocument;
        var group = doc.activeLayer;
        
        if (!group || group.typename !== "LayerSet") {
            alert("Select a group containing numbered sub-groups 1,2,3...");
            return;
        }
        
        // Find numbered groups
        var subGroups = [];
        for (var i = 0; i < group.layers.length; i++) {
            var layer = group.layers[i];
            if (layer.typename === "LayerSet") {
                var n = parseInt(layer.name);
                if (!isNaN(n)) {
                    subGroups.push({layer: layer, num: n});
                }
            }
        }
        
        if (subGroups.length === 0) {
            alert("No numbered groups found!");
            return;
        }
        
        // Sort by number
        subGroups.sort(function(a, b) { return a.num - b.num; });
        
        // Get save location
        var folder = Folder.selectDialog("Select save folder");
        if (!folder) return;
        
        // Simple filename prefix
        var prefix = prompt("File prefix:", "export") || "export";
        
        // Clean prefix - simple method without complex regex
        prefix = prefix.replace(/\.psd$/i, "");
        prefix = prefix.replace(/[<>:"]/g, "_");
        prefix = prefix.replace(/[\/\\]/g, "_");
        prefix = prefix.replace(/[|?*]/g, "_");
        prefix = prefix.replace(/\s+/g, "_");
        
        // Save visibility
        var visible = [];
        for (var i = 0; i < subGroups.length; i++) {
            visible.push(subGroups[i].layer.visible);
            subGroups[i].layer.visible = false;
        }
        
        // Export each
        for (var i = 0; i < subGroups.length; i++) {
            subGroups[i].layer.visible = true;
            
            var fileName = prefix + "_" + subGroups[i].num + ".jpg";
            var file = new File(folder + "/" + fileName);
            
            var options = new JPEGSaveOptions();
            options.quality = 12;
            
            doc.saveAs(file, options, true);
            
            subGroups[i].layer.visible = false;
        }
        
        // Restore
        for (var i = 0; i < subGroups.length; i++) {
            subGroups[i].layer.visible = visible[i];
        }
        
        alert("Exported " + subGroups.length + " files!");
        
    } catch (e) {
        alert("Error: " + e.message);
    }
}

// Run
exportGroups();