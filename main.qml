import QtQuick 2.12
import QtQuick.Window 2.12
import StyleModule 1.0
import ViewDelegateModule 1.0
import PhoneContactsModel 1.0

Window {
	id: window
	visible: true
	width: Style.winWidth
	height: Style.winHeight
	title: qsTr("Phone Contacts")

	Header {
		width: Style.winWidth
		z: 100
		ViewButton {
		}
	}

	Loader { id: pageLoader }

	GridView {
		anchors.topMargin: 70
		anchors.fill: parent
		z: 50
		model: ContactsModel {
			id: myContactModel
		}
	}

	Rectangle {
		id: _bagkround
		z: -100
		anchors.fill: parent
		color: Style.mainColor
	}
}
