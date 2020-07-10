import QtQuick 2.0
import StyleModule 1.0
import QtGraphicalEffects 1.0

Rectangle {
	id: _contactDelegate
	color: _delegateArea.pressed ?
	Style.colorAccent : Style.bgColor
	width: root.width
	height: 70

	ContactImg {
		anchors.verticalCenter: _contactDelegate.verticalCenter
	}

	Column {
		anchors.fill: _contactDelegate
		anchors.leftMargin: Style.contactImgBoxSize + 5
		anchors.topMargin: Style.mdOffset
		anchors.verticalCenter: _contactDelegate.verticalCenter
		Row {
			spacing: Style.mdSpacing
			FontStyle {text: name}
		}
		FontStyle {
			text: phoneNumber
			color: _delegateArea.pressed ?
			Style.bgColor : Style.colorAccent
		}
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

