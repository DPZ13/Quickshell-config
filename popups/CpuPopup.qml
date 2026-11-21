import QtQuick
import Quickshell
import Quickshell.Wayland
import qs.config.components.popups
import "../config/components"

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
            spacing: 5
            BoxPopupCpu { id: cpuUsage0 }
            BoxPopupCpu { id: cpuUsage1 }
            BoxPopupCpu { id: cpuUsage2 }
            BoxPopupCpu { id: cpuUsage3 }
            BoxPopupCpu { id: cpuUsage4 }
            BoxPopupCpu { id: cpuUsage5 }
            BoxPopupCpu { id: cpuUsage6 }
            BoxPopupCpu { id: cpuUsage7 }
        }
    }
}
