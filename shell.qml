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
	    left: -1
		right: -1
        top: 0
        bottom: 2
	}

    height: 40
	color: col.none
    BackgroundEffect.blurRegion: Region {
        item: backgroundBar
    }

    Rectangle {
        id: backgroundBar
        anchors.fill: parent
        radius: 8
        color: "#99110011"
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

    // widget
    Row {
        anchors.verticalCenter: parent.verticalCenter

        CpuWidget { id: cpuWidget }
    }

}
