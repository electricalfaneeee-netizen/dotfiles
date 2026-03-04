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
    	implicitHeight: isActive ? 60 : 30
    	implicitWidth: isActive ? 100 : 30
    	color: isActive ? Visual.selected : (ws ? Visual.lightTint : Visual.surface)
    	radius: 67

    	Behavior on implicitWidth { PropertyAnimation { duration: 35 } }
    	Behavior on implicitHeight { PropertyAnimation { duration: 35 } }
    	Behavior on color { PropertyAnimation { duration: 35 } }

        Text {
            anchors.centerIn: parent
            text: isActive ? index + 1 : ""
            color: Visual.primaryText
            font { family: Visual.fontFamily; pixelSize: 22; bold: true}
        }

	MouseArea {
	    anchors.fill: parent
	    onClicked: Hyprland.dispatch(`workspace ${index + 1}`)
	}
    }
}

