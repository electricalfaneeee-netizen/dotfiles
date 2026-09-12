import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

Rectangle {
    id: status

    implicitHeight: 60
    implicitWidth: 80

    color: Visual.surface

    radius: 20

    Text {
	anchors.centerIn: parent
	text: ""
	color: Visual.primaryText
	font { family: Visual.fontFamily; pixelSize: 40; bold: true}
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: PropertyAnimation { target: status; property: "color"; to: Visual.coolTint; duration: 75 }
        onExited: PropertyAnimation { target: status; property: "color"; to: Visual.surface; duration: 75 }
        onClicked: PanelState.toggle()
    }

    SidePanel {}
}
