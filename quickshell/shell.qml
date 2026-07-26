import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import Quickshell.Hyprland
import Quickshell.Widgets
import QtQuick
import QtQuick.Effects
import QtQuick.Layouts
import QtQml.Models

Variants {
    model: Quickshell.screens

    PanelWindow {

        id: root

        anchors.left: true
        anchors.right: true
        anchors.top: true

        implicitHeight: 90

        color: "transparent"

        ClippingRectangle {
            anchors.fill: parent
	    bottomLeftRadius: 25
	    bottomRightRadius: 25
        
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
