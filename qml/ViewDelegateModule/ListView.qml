import QtQuick 2.5
import QtQml.Models 2.15
import StyleModule 1.0

ListView {
	id: root
	spacing: 1
	section.criteria: ViewSection.FirstCharacter
	section.property: "name"

	delegate: ListDelegate {
	}
}

