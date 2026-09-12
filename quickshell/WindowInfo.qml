import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

Text {
    id: windowInfo

    property string activeWindow: ""
    property string currentLayout: ""

    Layout.preferredWidth: 800

    textFormat: Text.StyledText
    text: "<font color=\"" + Visual.secondaryText.toString() +  "\"> | <font>" + "<font color=\"" + Visual.primaryText.toString() + "\">currentLayout<font>" + "<font color=\"" + Visual.secondaryText.toString() +  "\"> | <font>" + "<font color=\"" + Visual.primaryText.toString() + "\">activeWindow<font>"
    elide: Text.ElideRight
    color: Visual.primaryText
    font { family: Visual.fontFamily; pixelSize: 28; bold: true }

    Timer {
	interval: 250
	repeat: true
	running: true
	triggeredOnStart: true
	onTriggered: (activeWindowProc.start(), layoutProc.start())
    }

    Process {
        id: activeWindowProc
        command: ["sh", "-c", "hyprctl activewindow -j | jq -r '.title // empty'"]
        running: true

	stdout: SplitParser {
	    onRead: data => {
		if (data && data.trim()) {
		    windowInfo.activeWindow = data.trim()
		} else {
		    windowInfo.activeWindow = ""
		}
	    }   
	}
    }

    Process {
        id: layoutProc
        command: ["sh", "-c", "hyprctl activewindow -j | jq -r 'if .floating then \"Floating\" else \"Tiled\" end'"]
        running: true

	stdout: SplitParser {
	    onRead: data => {
		if (data && data.trim()) {
		    windowInfo.currentLayout = data.trim()
		} else {
		    windowInfo.activeWindow = ""
		}
	    }
	}
    }
}
