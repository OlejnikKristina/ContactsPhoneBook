import QtQuick 2.0
import StyleModule 1.0

 Rectangle {
	property int headerHeight: 70

	id: _header
	height: headerHeight
	z: 2
	color: Style.colorViolet

/* ****   Header logo **** */
	Rectangle {
			anchors.verticalCenter: parent.verticalCenter
			width: headerHeight + 40
		Image {
			id: _contactImg
			source: "img/icon_header.svg"
			width: headerHeight
			height: headerHeight
			anchors.verticalCenter: parent.verticalCenter
			anchors.horizontalCenter: parent.horizontalCenter
		}
	}

/* ****   Main header title **** */
	FontStyle {
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
//		font.family: FontStyle.headerFont.name
		text: "<h2>My phone contacts</h2>"
	}
}

