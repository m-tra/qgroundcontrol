import QtQuick

import QGroundControl
import QGroundControl.Controls
import QGroundControl.ScreenTools
import QGroundControl.FactSystem
import QGroundControl.Palette

Rectangle {
    width: ScreenTools.defaultFontPixelHeight * 10
    height: _outerRadius * 4
    radius: _outerRadius
    color: QGroundControl.globalPalette.window

    property real extraInset: 0
    property real extraValuesWidth: _outerRadius

    property real _outerMargin: (width * 0.05) / 2
    property real _outerRadius: width / 2
    property real _innerRadius: _outerRadius - _outerMargin

    // Print a test string to ensure the file is visible
    Text {
        anchors.centerIn: parent
        text: "Test string"
        font.pixelSize: ScreenTools.defaultFontPixelHeight
        color: QGroundControl.globalPalette.text
    }
}
