import Quickshell
import QtQuick
import Quickshell.Wayland

Rectangle {
    implicitWidth: 250
    implicitHeight: 50

    radius: 8
    border.width: 1

    color: col.bg
    border.color: col.border

    Rectangle {
        implicitWidth: 50
        implicitHeight: 50

        anchors.left: parent
        color: col.iconBg
    }
}