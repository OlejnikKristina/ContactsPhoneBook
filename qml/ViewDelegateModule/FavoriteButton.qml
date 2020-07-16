import QtQuick 2.0
import QtQuick.Controls 2.15
import StyleModule 1.0


Rectangle {
	readonly property int favoriteButtonWidth: 35
	readonly property int favoriteButtoHeight: 35
	property alias checxed:_favoriteCheckBox.checked

	id: _favoriteBox
	color: Style.colorViolet

	CheckBox {
		id: _favoriteCheckBox
		width: favoriteButtonWidth
		height:favoriteButtoHeight
		checked: false
		opacity : 0
		anchors.verticalCenter: _favoriteBox.verticalCenter
	}

	Image {
		id: _favoriteImg
		width: favoriteButtonWidth
		height:favoriteButtoHeight
		source: _favoriteCheckBox.checked ?
		"img/favorite_checked.svg" : "img/favorite_unchecked.svg"
		anchors.verticalCenter: _favoriteBox.verticalCenter
	}
}
