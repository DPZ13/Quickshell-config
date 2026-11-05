import QtQuick
import Quickshell.Io
import Qt.labs.folderlistmodel

Item {
	id: root

	property var load: []
	property real temp: 0

	Item {
		id: cpuTemperature

		property string hwmonPath: ""
		FolderListModel {
			id: hwmonFolders

			folder: "file:///sys/class/hwmon"
			showDirs: true
			showFiles: false
		}

		Repeater {
			model: hwmonFolders

			delegate: Item {
				id: hwmonEntry
	
				required property string fileName
				required property string filePath
	
				FileView {
					path: /^hwmon\d+$/.test(hwmonEntry.fileName)
					    ? hwmonEntry.filePath + "/name"
					    : ""

					onLoaded: {
						if (text().trim() === "k10temp") {
						cpuTemperature.hwmonPath = hwmonEntry.filePath
						}
					}
				}
			}
		}
	
		FileView {
			id: tempFile

			path: cpuTemperature.hwmonPath === ""
			    ? ""
			    : cpuTemperature.hwmonPath + "/temp1_input"

			onLoaded: {
				root.temp = Number(text().trim()) / 1000
			}
		}

		Timer {
			interval: 1000
			running: cpuTemperature.hwmonPath !== ""
			repeat: true

			onTriggered: tempFile.reload()
		}
	}

	Item {
		id: cpuLoad

		property var totalOld: []
		property var idleOld: []

		FileView {
			id: cpuFile
			path: "/proc/stat"
			onLoaded: {
				const cores = text().split("\n")
				    .filter(line => /^cpu\d+\s/.test(line))
		    		.map(line => {
						const v = line.trim().split(/\s+/).slice(1, 9).map(Number)

						return {
							total: v.reduce((a, b) => a + b, 0),
							idle: v[3] + v[4]
						}
					})

				if (cpuLoad.totalOld.length !== cores.length) {
						cpuLoad.totalOld = cores.map(c => c.total)
						cpuLoad.idleOld = cores.map(c => c.idle)
						return
				}

				root.load = cores.map((c, i) => {
					const total = c.total - cpuLoad.totalOld[i]
					const idle = c.idle - cpuLoad.idleOld[i]

					return total > 0 ? (total - idle) / total * 100 : 0
				})

				cpuLoad.totalOld = cores.map(c => c.total)
				cpuLoad.idleOld = cores.map(c => c.idle)

			}
		}

		Timer {
			interval: 1000
			running: true
			repeat: true
			onTriggered: cpuFile.reload()
		}

	}
}
