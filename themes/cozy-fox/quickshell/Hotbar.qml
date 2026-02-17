import Quickshell
import Quickshell.Io
import QtQuick

Scope {
    id: hotbar

    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData
            
            aboveWindows: false
            implicitHeight: 65
            implicitWidth: 500

            color: "transparent"
            // exclusiveZone: 0

            anchors {
                bottom: true
            }
            
            Image {
                anchors.fill: parent
                source: "./Hotbar.png"

                Image {
                    id: hotbarslot
                    
                    // aboveWindows: false
                    // implicitHeight: 65
                    // implicitWidth: 65

                    source: "./Hotbar-Selected.png"

                }
            }
        }
    }
}