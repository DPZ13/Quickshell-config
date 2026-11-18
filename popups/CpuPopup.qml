import QtQuick
import Quickshell
import Quickshell.Wayland

Item {
    id: root

    PopupWindow {
        id: popup

        visible: cpuWidget.isActive

        anchor.item: cpuWidget
        anchor.edges: Edges.Bottom | Edges.Left
        anchor.gravity: Edges.Bottom | Edges.Right
        anchor.margins.left: 4

        implicitWidth: 300
        implicitHeight: 300
        color: col.none

        grabFocus: true

        BackgroundEffect.blurRegion: Region {
            item: popup.contentItem
            radius: 8
        }
            
        Rectangle {
            implicitWidth: popup.width/4
            implicitHeight: popup.width/4
            color: col.bg
        }
    }
}
