var document = app.activeDocument;
var artboard = document.artboards[0];

var x = -2.15 * 72 / 2.54;
var y = 1.25 * 72 / 2.54;
var w = 5.8 * 72 / 2.54;
var h = 4 * 72 / 2.54;

artboard.artboardRect = [x, y, (x + w), -(y + h)];

$.writeln(document.artboards[0].artboardRect);