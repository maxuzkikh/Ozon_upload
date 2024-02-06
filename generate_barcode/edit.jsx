var document = app.activeDocument;
var artboard = document.artboards[0];

var x = 0 * 72 / 2.54;
var y = 0 * 72 / 2.54;
var w = 4.3 * 72 / 2.54;
var h = 2.5 * 72 / 2.54;

artboard.artboardRect = [x, y, (x + w), -(y + h)];

$.writeln(document.artboards[0].artboardRect);