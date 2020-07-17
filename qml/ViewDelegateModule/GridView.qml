import QtQuick 2.5
import QtQml.Models 2.15
import StyleModule 1.0
import PhoneContactsModel 1.0

GridView {
	id: grid

	anchors.fill: parent
	cellWidth: Style.winWidth / 2
	cellHeight: Style.winWidth / 2

	delegate: GridDelegate {}
}
