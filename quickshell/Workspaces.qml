import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Repeater {
	model: 10
                
    Rectangle {
    	id: workspace

    	property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
    	property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)

    	Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
    	implicitHeight: 30
    	implicitWidth: isActive ? 150 : 30
    	color: isActive ? Visual.selected : (ws ? Visual.lightTint : Visual.surface)
    	radius: 67

    	Behavior on implicitWidth { NumberAnimation { duration: 50 } }
    	Behavior on color { ColorAnimation { duration: 35 } }

        // Text {
        //     anchors.centerIn: parent
        //     text: isActive ? index + 1 : ""
        //     color: Visual.primaryText
        //     font { family: Visual.fontFamily; pixelSize: 22; bold: true}
        // }

	MouseArea {
	    anchors.fill: parent
	    onClicked: Hyprland.dispatch(`hl.dsp.focus({ workspace = ${index + 1} })`)
	}
    }
}

