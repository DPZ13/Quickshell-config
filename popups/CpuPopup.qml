import QtQuick
import Quickshell

Item {
    id: root

    PopupWindow {
        id: popup

        visible: cpuWidget.isActive

        anchor.item: cpuWidget
        anchor.edges: Edges.Bottom | Edges.Left
        anchor.gravity: Edges.Bottom | Edges.Right

        implicitWidth: 300
        implicitHeight: 300
        color: col.none

        grabFocus: true

        Rectangle {
            anchors.fill: parent
            radius: 8
            color: col.popupBg
            antialiasing: true

            Rectangle {
                implicitWidth: popup.width/4
                implicitHeight: popup.height/4
                color: col.bg
            }
        }
    }
}