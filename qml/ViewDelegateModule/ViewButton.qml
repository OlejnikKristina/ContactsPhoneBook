import QtQuick 2.0
import StyleModule 1.0
import QtQuick.Controls 2.15

Rectangle {
	property int viewButtonWidth: Style.contactImgSize - 15
	property int viewButtonHeight: Style.contactImgSize - 15
	property alias isGridView: _viewCheckBox.checked

	id: _imgBox
	width: viewButtonWidth
	height: viewButtonHeight
	anchors.right: parent.right
	anchors.rightMargin: Style.xlOffset + 2
	anchors.verticalCenter: parent.verticalCenter

	CheckBox {
		id: _viewCheckBox
		anchors.fill: parent
		opacity: 0
		checked: true
	}

	Image {
		id: _viewImg
		width: parent.width
		height: parent.height
		source: _viewCheckBox.checked ?
		"img/list.png" : "img/grid.png"
		anchors.verticalCenter: parent.verticalCenter
	}
}
