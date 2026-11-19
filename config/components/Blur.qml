import Quickshell
import QtQuick
import Quickshell.Wayland

Rectangle {
    id: bg
    anchors.fill: parent
    radius: 8
    color: col.blur
    BackgroundEffect.blurRegion: Region {
        item: bg
        radius: 8
    }
}