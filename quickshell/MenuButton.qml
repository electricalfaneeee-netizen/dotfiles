import Quickshell
import Quickshell.Io
import QtQuick

Rectangle {
    id: menuButton
    
    implicitHeight: 60
    implicitWidth: 80

    color: "transparent"

    radius: 20

    Text {
        anchors.centerIn: parent
        text: ""
        color: Visual.primaryText
        font { family: Visual.fontFamily; pixelSize: 40 }
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: PropertyAnimation { target: menuButton; property: "color"; to: Visual.hover; duration: 100 }
        onExited: PropertyAnimation { target: menuButton; property: "color"; to: "transparent"; duration: 100 }
        
        Process {
            id: rofi

            command: ["sh", "-c", "rofi -show drun"]
            running: false
        }

        onClicked: rofi.running = true
    }
}