import QtQuick
import Quickshell
import Quickshell.Wayland
import qs.config.components
import qs.config.components.popups

Item {
    PopupWindow {
        visible: cpuWidget.isActive

        anchor.item: cpuWidget
        anchor.edges: Edges.Bottom | Edges.Left
        anchor.gravity: Edges.Bottom | Edges.Right
        anchor.margins.left: 10
        anchor.margins.bottom: -5

        implicitWidth: main.width + 50
        implicitHeight: main.height + 50
        color: col.none

        BackgroundEffect.blurRegion: Region {
            radius: 8
            item: blurbox
        }
        Blurbox { 
            id: blurbox
            border.width: 1
            border.color: col.border
        }
            
        Column {
            id: main
            anchors.centerIn: parent
            spacing: 15
            BoxPopupCpu { 
                id: cpuUsage0
                currentCpu: 1
                }
            BoxPopupCpu { 
                id: cpuUsage1
                currentCpu: 2
            }
                BoxPopupCpu { 
                id: cpuUsage2
                currentCpu: 3
            }
                BoxPopupCpu { 
                id: cpuUsage3
                currentCpu: 4
            }
            BoxPopupCpu { 
                id: cpuUsage4
                currentCpu: 5
            }
                BoxPopupCpu { 
                id: cpuUsage5
                currentCpu: 6
            }
                BoxPopupCpu { 
                id: cpuUsage6
                currentCpu: 7
            }
                BoxPopupCpu { 
                id: cpuUsage7
                currentCpu: 8
            }
        }
    }
}
