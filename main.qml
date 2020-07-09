import QtQuick 2.12
import QtQuick.Window 2.12
import StyleModule 1.0
import ViewDelegateModule 1.0

Window {
	id: window
	visible: true
	width: Style.winWidth
	height: Style.winHeight
	title: qsTr("Phone Contacts")

	ListView {
		anchors.fill: parent
	}

	Rectangle {
		id: _bagkround
		z: -100
		anchors.fill: parent
		color: Style.mainColor
	}
}
