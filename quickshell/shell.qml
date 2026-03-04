import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Effects
import QtQuick.Layouts
import QtQml.Models

Variants {
    model: Quickshell.screens

    PanelWindow {

        id: root
	WlrLayershell.namespace: "qs_bar"

        anchors.left: true
        anchors.right: true
        anchors.top: true

	margins.left: 15
	margins.right: 15
	margins.top: 12

        implicitHeight: 90

        color: "transparent"

        Rectangle {
            anchors.fill: parent
            border.color: Visual.selected
            border.width: 4
            radius: 20
        
            color: Qt.alpha(Visual.panel, 0.95)

            Time {}

            RowLayout {
                anchors.fill: parent
                spacing: 24

                Item {
                    implicitWidth: 6
                }

                Workspaces {}

                // WindowInfo {}

                Item {
                    Layout.fillWidth: true
                }
            
                SidePanelButton {}

                MenuButton {}

                Item {
                    implicitWidth: 20
                }
            }
        }
    }
}
