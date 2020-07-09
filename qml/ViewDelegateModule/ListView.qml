import QtQuick 2.5
import StyleModule 1.0
import PhoneContactsModel 1.0

ListView {
	id: root
	spacing: 1
	section.criteria: ViewSection.FirstCharacter
	section.property: "name"

	header: Header {
		width: Style.winWidth
	}

	model: ContactsModel {}

	delegate: ListDelegate {
	}
}


