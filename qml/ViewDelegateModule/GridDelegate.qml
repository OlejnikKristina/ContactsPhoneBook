import QtQuick 2.0
import StyleModule 1.0
import QtGraphicalEffects 1.0

Rectangle {
		id: _contactDelegate
		width: grid.cellWidth - 10
		height: grid.cellHeight - 10
		color: _delegateArea.pressed ?
		Style.colorAccent : Style.bgColor
		anchors.leftMargin: Style.xxlOffset

		ContactImg {
			anchors.top: _contactDelegate.top
			anchors.horizontalCenter: parent.horizontalCenter
			anchors.topMargin: Style.xxlOffset
			color: Style.colorViolet
		}
		FontStyle {
			text: name
			anchors.horizontalCenter: parent.horizontalCenter
			anchors.verticalCenter: _contactDelegate.verticalCenter
		}
		FontStyle {
			text: phoneNumber
			color: _delegateArea.pressed ?
			Style.bgColor : Style.colorAccent
			anchors.horizontalCenter: parent.horizontalCenter
			anchors.bottom: _contactDelegate.bottom
			anchors.bottomMargin: Style.xxlOffset * 1.8
		}

		MouseArea {
			id: _delegateArea
			anchors.fill: _contactDelegate
		}

		DropShadow {
		  anchors.fill: _contactDelegate
		  z: -90
		  horizontalOffset: 2
		  verticalOffset: 2
		  radius: 10
		  samples: 5
		  source: _contactDelegate
		  color: Style.colorViolet
		}
	}
