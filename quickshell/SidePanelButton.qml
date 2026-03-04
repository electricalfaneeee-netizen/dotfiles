import Quickshell
import QtQuick

Rectangle {
    id: sidePanelButton

    signal panel()

    implicitHeight: 60
    implicitWidth: 150

    color: Visual.surface

    radius: 20

    Text {
        anchors.centerIn: parent
        color: Visual.secondaryText
        text: "filler"
        font { family: Visual.fontFamily; pixelSize: 22; bold: true }
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: PropertyAnimation { target: sidePanelButton; property: "color"; to: Visual.coolTint; duration: 75 }
        onExited: PropertyAnimation { target: sidePanelButton; property: "color"; to: Visual.surface; duration: 75 }
        onClicked: panel()
    }
}