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

        implicitWidth: main.width + 50
        implicitHeight: main.height + 50
        color: col.none

        //Blur{}
            
        Column {
            id: main
            anchors.centerIn: parent
            spacing: 5
            BoxPopup { id: cpuUsage0 }
            BoxPopup { id: cpuUsage1 }
            BoxPopup { id: cpuUsage2 }
            BoxPopup { id: cpuUsage3 }
            BoxPopup { id: cpuUsage4 }
            BoxPopup { id: cpuUsage5 }
            BoxPopup { id: cpuUsage6 }
            BoxPopup { id: cpuUsage7 }
        }
    }
}
