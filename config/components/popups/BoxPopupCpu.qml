import Quickshell
import QtQuick
import Quickshell.Wayland
import "../../../config"

Rectangle {
    property real currentCpu: 0

    Icons { id: icon }
    implicitWidth: 250
    implicitHeight: 50

    radius: 8
    border.width: 1

    color: col.bg
    border.color: col.border

    Rectangle {
        implicitWidth: 60
        implicitHeight: 60

        anchors.centerIn: parent

        color: col.iconBg
        border.color: col.border

        border.width: 1

        Text {
            text: currentCpu
            color: col.text
            anchors.left: parent.left
            anchors.leftMargin: 4
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 30
            font.weight: 800
        }
            
        Image {
            source: Qt.resolvedUrl(icon.cpu)
            width: 30
            height:30
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 4
        }
    }
}