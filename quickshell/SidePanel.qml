import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import QtQuick

PanelWindow {
    id: sidePanelWindow
    exclusionMode: ExclusionMode.Ignore

    visible: true

    implicitHeight: 2070
    implicitWidth: 1000
    color: "transparent"

    anchors {
	bottom: true
	right: true
    }

    mask: Region {
	item: panelContent
    }

    Rectangle {
	id: panelContent
	implicitWidth: 1000
	implicitHeight: parent.height
        color: Qt.alpha(Visual.panel, 0.95)

	clip: true

	states: [
	    State {
		name: "closed"
		when: !PanelState.isOpen
		PropertyChanges { target: panelContent; x: 1000 }
	    },
	    State {
		name: "open"
		when: PanelState.isOpen
		PropertyChanges { target: panelContent; x:0 }
	    }
	]

	transitions: [
	    Transition {
		from: "closed"; to: "open"
		NumberAnimation { property: "x"; duration: 250; easing.type: Easing.OutQuart }
	    },
	    Transition {
		from: "open"; to: "closed"
		NumberAnimation { property: "x"; duration: 250; easing.type: Easing.OutQuart }
	    }
	]

	Text {
	    anchors.centerIn: parent
	    text: "filler"
	    color: Visual.primaryText
	    font { family: Visual.fontFamily; pixelSize: 40; bold: true}
	}
    }
}
