import QtQuick
import QGroundControl
import QGroundControl.Controls
import QGroundControl.ScreenTools
import QGroundControl.FactSystem
import QGroundControl.Palette

Rectangle {
    id: joystickRect
    width: ScreenTools.defaultFontPixelHeight * 16
    height: width / 3
    radius: width / 2
    color: QGroundControl.globalPalette.window

    // property to store updated joystick values
    property var joystickData: ({ roll: 0, pitch: 0, yaw: 0, thrust: 0})

    Column {
        anchors.centerIn: parent
        spacing: ScreenTools.defaultFontPixelHeight / 4

        Text {
            id: labelRoll
            text: "Roll: " + joystickData.roll.toFixed(2)
            color: "white"
        }
        Text {
            id: labelPitch
            text: "Pitch: " + joystickData.pitch.toFixed(2)
            color: "white"
        }
        Text {
            id: labelYaw
            text: "Yaw: " + joystickData.yaw.toFixed(2)
            color: "white"
        }
        Text {
            id: labelThrust
            text: "Thrust: " + joystickData.thrust.toFixed(2)
            color: "white"
        }
    }

    Connections {
        target: globals.activeVehicle

        function onJoystickDataUpdated(roll, pitch, yaw, thrust) {
            joystickRect.joystickData = { 
                roll: roll, 
                pitch: pitch, 
                yaw: yaw, 
                thrust: thrust 
            };
        }
    }
}
