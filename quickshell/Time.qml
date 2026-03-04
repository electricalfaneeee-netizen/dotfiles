import Quickshell
import QtQuick

Item {

    anchors.centerIn: parent

    SystemClock {
	id: clock
	precision: SystemClock.Minutes
    }

    Text {
	anchors.centerIn: parent
	color: Visual.primaryText
	text: Qt.formatDateTime(clock.date, "h:mm AP")
	font { family: Visual.fontFamily; pixelSize: 40; bold: true}
    }
}
