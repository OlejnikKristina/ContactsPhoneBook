import QtQuick 2.0
import QtGraphicalEffects 1.0
import StyleModule 1.0
import QtQuick.Controls 2.15

Rectangle {
	id: _contactDelegate
	width: grid.cellWidth - 10
	height: grid.cellHeight - 10

//	width: Favorite ? grid.cellWidth - 10 : 0
//	height: Favorite ? grid.cellHeight - 10 : 0
//	visible: Favorite ? 1 : 0
	color: _delegateArea.pressed ?
	Style.colorAccent : Style.bgColor
	anchors.leftMargin: Style.xxlOffset
	z: 20

	ContactImg {
		anchors.top: _contactDelegate.top
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.topMargin: Style.xxlOffset
		color: Style.colorViolet
	}

	FontStyle {
		text: name
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: _contactDelegate.verticalCenter
	}

	FontStyle {
		text: phoneNumber
		color: _delegateArea.pressed ?
		Style.bgColor : Style.colorAccent
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: _contactDelegate.bottom
		anchors.bottomMargin: Style.xxlOffset * 1.8
	}

/* ****   Favorites checkbox star button **** */

	FavoriteButton {
		id: jelmer
		anchors.bottom: parent.bottom
		anchors.bottomMargin: Style.xxlOffset
		anchors.horizontalCenter: parent.horizontalCenter
		z: 100
		checxed: Favorite
//		width: Favorite ? 35 : 10
//		height: Favorite ? 35 : 10
//		visible: Favorite ? 1 : 1

	}

//	visible: jelmer._favoriteButton ? false : true
//	_favoriteButton.checxed: false
//	_favoriteButton._favoriteButton : _favoriteButton.false
//	_favoriteButton.checxed: Favorite

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
