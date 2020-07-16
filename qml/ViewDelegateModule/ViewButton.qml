import QtQuick 2.0
import StyleModule 1.0

Rectangle {
	id: _imgBox
	width: Style.contactImgSize - 15
	height: Style.contactImgSize - 15
	anchors.right: parent.right
	anchors.rightMargin: Style.xlOffset + 2
	anchors.verticalCenter: parent.verticalCenter

	Image {
		id: _viewImg
//		source: _viewImgArea.hoverEnabled ?
//		"img/list.png" : "img/grid.png"
		source:"img/list.png"
		width: Style.contactImgSize - 15
		height: Style.contactImgSize - 15
//		anchors.topMargin: Style.xxlOffset
		anchors.verticalCenter: parent.verticalCenter
//		MouseArea
//		{
//			hoverEnabled: true
//			anchors.fill:parent
//			onClicked: {
//			parent.color="blue"
//			source: "img/list.png"
//			 console.log("clicked img");
//			}
//		}
	}

	MouseArea
	{
		id: _viewImgArea
//		hoverEnabled: _viewImgArea.hoverEnabled ?
//		false : true
		anchors.fill:parent
//		onClicked: {
//			parent.color="blue"
//			console.log("clicked");
//		}
	}
}
