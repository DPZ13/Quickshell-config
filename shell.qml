import Quickshell
import QtQuick
import Quickshell.Wayland

import qs.popups
import qs.widgets
import qs.modules
import qs.config

PanelWindow {
    anchors {
	    top: true
    	left: true
    	right: true
    }
    margins {
	    left: 5
		right: 5 
        top: 5
        bottom: 2
	}

    height: 40
	color: col.none
    BackgroundEffect.blurRegion: Region {
        item: backgroundBar
        radius: 8
    }

    Rectangle {
        id: backgroundBar
        anchors.fill: parent
        radius: 8
        color: "#99110011"
        border.color: col.borderBg
        border.width: 1
    }

    // config
    Colors { id: col } 
    Icons { id: icon }

    // modules
    CpuModule { 
        id: cpuModule 
        }

    // popups
    CpuPopup { id: cpuPopup }

    // widgets
    Row {
        anchors.verticalCenter: parent.verticalCenter

        CpuWidget { id: cpuWidget }
    }

}
