import Quickshell
import QtQuick

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
	    left: 10
		right: 10 
	}

    height: 30
	color: "transparent"

    // config
    Colors { id: col } 
    Icons { id: icon }

    // modules
    CpuModule { id: cpuModule }

    // popups
    CpuPopup { id: cpuPopup }

    // widgets
    Row {
        CpuWidget { id: cpuWidget }
    }

}
