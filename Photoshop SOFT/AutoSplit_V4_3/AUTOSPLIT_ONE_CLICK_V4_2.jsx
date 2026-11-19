#target photoshop
app.bringToFront();
(function () {
    var previousUnits = app.preferences.rulerUnits;
    var original = null, exportDoc = null, target = null, partDoc = null;
    var imported = 0;
    function writeText(file, value, encoding) {
        file.encoding = encoding || 'UTF8';
        if (!file.open('w')) throw new Error('Cannot write file: ' + file.fsName);
        file.write(value);
        file.close();
    }
    function readText(file) {
        file.encoding = 'UTF8';
        if (!file.open('r')) throw new Error('Cannot read status: ' + file.fsName);
        var s = file.read(); file.close();
        return s.replace(/^\uFEFF/, '');
    }
    function makeDirs(dir) { if (!dir.exists && !dir.create()) throw new Error('Cannot create: ' + dir.fsName); }
    function copyFile(from, to) {
        if (!from.exists) throw new Error('Missing component: ' + from.name + '. Extract the entire ZIP.');
        if (!from.copy(to.fsName)) throw new Error('Copy failed: ' + from.name);
    }
    try {
        if (!app.documents.length) throw new Error('Open a transparent PNG document first.');
        app.preferences.rulerUnits = Units.PIXELS;
        original = app.activeDocument;
        if (original.mode !== DocumentMode.RGB) throw new Error('Convert to RGB mode (Image > Mode > RGB Color) first.');
        var root = File($.fileName).parent;
        var tempBase = Folder(Folder.temp.fsName + '/AutoSplit_Photoshop_2026');
        makeDirs(tempBase);
        var token = (new Date()).getTime().toString() + '_' + Math.floor(Math.random() * 100000).toString();
        var job = Folder(tempBase.fsName + '/run_' + token);
        makeDirs(job);
        var inputFile = File(job.fsName + '/source.png');
        var outputFolder = Folder(job.fsName + '/output');
        var status = File(job.fsName + '/status.txt');
        // Duplicate + merge visible content in the copy; NEVER flatten original onto white.
        exportDoc = original.duplicate('AutoSplit Temporary Export', true);
        app.activeDocument = exportDoc;
        var pngOptions = new PNGSaveOptions();
        pngOptions.interlaced = false;
        exportDoc.saveAs(inputFile, pngOptions, true, Extension.LOWERCASE);
        exportDoc.close(SaveOptions.DONOTSAVECHANGES);
        exportDoc = null;
        app.activeDocument = original;
        copyFile(File(root.fsName + '/autosplit.py'), File(job.fsName + '/autosplit.py'));
        copyFile(File(root.fsName + '/worker.py'), File(job.fsName + '/worker.py'));
        writeText(File(job.fsName + '/job.txt'), inputFile.fsName + '\n' + outputFolder.fsName + '\n');
        var bat = File(job.fsName + '/START_WORKER.bat');
        writeText(bat,
            '@echo off\r\n' +
            'cd /d "%~dp0"\r\n' +
            'where py >nul 2>nul\r\n' +
            'if not errorlevel 1 (\r\n' +
            '  py -3 worker.py > worker.log 2>&1\r\n' +
            ') else (\r\n' +
            '  python worker.py > worker.log 2>&1\r\n' +
            ')\r\n' +
            'if not exist status.txt (\r\n' +
            '  echo ERROR>status.txt\r\n' +
            '  echo Python not found, missing libraries, or launch failed. See worker.log.>>status.txt\r\n' +
            ')\r\n', 'ASCII');
        if (!bat.execute()) throw new Error('Windows could not launch START_WORKER.bat.');
        var deadline = (new Date()).getTime() + 360000; // six minutes
        while (!status.exists && (new Date()).getTime() < deadline) {
            $.sleep(500);
        }
        if (!status.exists) throw new Error('Processing timeout. Check Python and worker.log in: ' + job.fsName);
        var outcome = readText(status).split(/\r?\n/);
        if (outcome[0] !== 'OK') {
            throw new Error('Analyzer failed: ' + (outcome.length > 1 ? outcome[1] : 'Unknown error') + '\nDetails: ' + job.fsName + '/worker.log');
        }
        var pieces = Folder(outputFolder.fsName + '/layers_full_canvas');
        if (!pieces.exists) throw new Error('Analyzer returned OK but layers_full_canvas is missing.');
        var files = pieces.getFiles(function (f) { return f instanceof File && /\.png$/i.test(f.name); });
        if (!files || files.length < 1) throw new Error('No PNG objects were generated.');
        files.sort(function (a,b) { var aa=a.name.toLowerCase(), bb=b.name.toLowerCase(); return aa<bb?-1:aa>bb?1:0; });
        var w = Math.round(original.width.as('px'));
        var h = Math.round(original.height.as('px'));
        target = app.documents.add(w,h,original.resolution,'AutoSplit One Click',NewDocumentMode.RGB,DocumentFill.TRANSPARENT);
        app.activeDocument = target;
        var group = target.layerSets.add();
        group.name = 'AutoSplit - ' + files.length + ' objects';
        for (var i=0; i<files.length; i++) {
            partDoc = app.open(files[i]);
            if (Math.round(partDoc.width.as('px')) !== w || Math.round(partDoc.height.as('px')) !== h) {
                throw new Error('Incorrect size: ' + files[i].name);
            }
            // Proven V3 ordering: SOURCE is frontmost before duplicate().
            app.activeDocument = partDoc;
            var newLayer = partDoc.activeLayer.duplicate(target, ElementPlacement.PLACEATBEGINNING);
            app.activeDocument = target;
            newLayer.name = decodeURI(files[i].name).replace(/\.png$/i,'');
            newLayer.move(group, ElementPlacement.INSIDE);
            imported++;
            app.activeDocument = partDoc;
            partDoc.close(SaveOptions.DONOTSAVECHANGES);
            partDoc = null;
        }
        app.activeDocument = target;
        // Finished successfully: no alert needed.
    } catch (e) {
        alert('AutoSplit V4.1 error after ' + imported + ' layers: ' + e.message + '\nLine: ' + e.line);
    } finally {
        try { if (partDoc) { app.activeDocument = partDoc; partDoc.close(SaveOptions.DONOTSAVECHANGES); } } catch (_) {}
        try { if (exportDoc) { app.activeDocument = exportDoc; exportDoc.close(SaveOptions.DONOTSAVECHANGES); } } catch (_) {}
        try { if (target) app.activeDocument = target; else if (original) app.activeDocument = original; } catch (_) {}
        app.preferences.rulerUnits = previousUnits;
    }
})();
