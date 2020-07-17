import QtQuick 2.0
import StyleModule 1.0
import PhoneContactsModel 1.0

 Rectangle {
	property int headerHeight: 70

	id: _header
	height: headerHeight
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
		anchors.bottom: parent.bottom
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "<h2>My phone contacts</h2>"
	}

/* ****   Favorites checkbox star button **** */

	FavoriteButton {
		id: _favoriteButton
		width: favoriteButtonWidth
		height: favoriteButtoHeight
		anchors.right: parent.right
		anchors.rightMargin: Style.xxlOffset * 1.8
		anchors.verticalCenter: parent.verticalCenter
	}

	MouseArea {
		id: _favoriteButtonArea
		anchors.fill: _favoriteButton
		onClicked: {
			_favoriteButton.checxed ?
			_favoriteButton.checxed = false :
			_favoriteButton.checxed = true

			_favoriteButton.checxed ?
			myContactModel.showFavorites() :
			myContactModel.showAllContacts()
		}
	}

/* ****   Grid/list view  button **** */

//	ViewButton {
//	}
}

