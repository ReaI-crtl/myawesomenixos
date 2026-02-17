import Quickshell
import Quickshell.Io
import QtQuick

Scope {
    id: clock
    property string time

    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData
            
            aboveWindows: false
            implicitHeight: 120
            implicitWidth: 200

            color: "transparent"
            exclusiveZone: 0

            // surfaceFormat {
            //     opaque: false
            // }

            anchors {
                top: true
            }

            margins {
                top: screen.height * 0.2
            }

            Rectangle {

                color: "#CC3d2500"
                anchors.fill: parent
                
                border {
                    color: "#D95D39"
                    width: 2
                }

                Text {
                    anchors.centerIn: parent
                    text: clock.time
                    color: "#FFFFFF"


                    font {
                        family: "Monocraft"
                        pointSize: 22

                    }
                }

            }
        }
    }

    Process {
        id: dateProc
        command: ["date", "+%H:%M"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: clock.time = this.text
        }
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: dateProc.running = true
    }
}