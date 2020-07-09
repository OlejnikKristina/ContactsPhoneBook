import QtQuick 2.0
import StyleModule 1.0

Rectangle {
	property int contactImgSize: Style.contactImgSize
	property int contactImgBoxSize: Style.contactImgBoxSize

	anchors.verticalCenter: _contactDelegate.verticalCenter
	width: contactImgBoxSize
	height:contactImgBoxSize
	color: _delegateArea.pressed ?
	Style.colorAccent : Style.bgColor

	Rectangle {
		color: _delegateArea.pressed ?
		Style.bgColor: Style.colorAccent
		anchors.verticalCenter: parent.verticalCenter
		anchors.horizontalCenter: parent.horizontalCenter
		width: contactImgSize + 10
		height:contactImgSize + 10
		border.color: Style.textColor
		border.width: 1
		radius: (contactImgSize + 10) / 2

		Image {
			id: _contactImg
			source: Style.isDarkTheme ?
			"img/white_contact.svg" : "img/black_contact.svg"
			width: contactImgSize
			height: contactImgSize
			anchors.verticalCenter: parent.verticalCenter
			anchors.horizontalCenter: parent.horizontalCenter
		}
	}
}
