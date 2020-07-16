import QtQuick 2.5
import QtQml.Models 2.15
import StyleModule 1.0
import PhoneContactsModel 1.0

//ListView {
//	id: root
//	spacing: 1
//	section.criteria: ViewSection.FirstCharacter
//	section.property: "name"

//	header: Header {
//		width: Style.winWidth
//	}

//	model: ContactsModel {}

//	delegate: ListDelegate {
//	}
//}


GridView {
	id: grid

	anchors.fill: parent
	cellWidth: Style.winWidth / 2
	cellHeight: Style.winWidth / 2

	header: Header {
		width: Style.winWidth
	}

	model: ContactsModel {
		id: myContactModel
	}

	delegate: GridDelegate {}
}

