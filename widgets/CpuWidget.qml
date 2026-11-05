import QtQuick

Rectangle {
    id: root

    property bool isActive: false

    height: 30
    width: 86
    color: "transparent"

    Row {
        anchors.fill: parent
        Rectangle {

            height: parent.height
            width: 30
            color: mouseArea.containsMouse ? col.iconBgHover : col.iconBg
            bottomLeftRadius: 8
            topLeftRadius: 8
            antialiasing: true

            Image {
                source: Qt.resolvedUrl(icon.cpu)
                width: 20
                height: 20
                anchors.centerIn: parent
            }

            MouseArea {
                id: mouseArea

                anchors.fill: parent
                hoverEnabled: true

                onClicked: {
                    root.isActive = !root.isActive
                }
            }

        }

        Rectangle {
            height: parent.height
            width: 56
            color: col.bg
            topRightRadius: 8
            bottomRightRadius: 8
            antialiasing: true

            Text { 
                text: cpuModule.temp.toFixed(0) + "°C"
                anchors.centerIn: parent
                color: col.text
                font.weight: 800
                font.pixelSize: 14
            }
        }
    }
}