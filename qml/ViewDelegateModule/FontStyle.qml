import QtQuick 2.0
import StyleModule 1.0

Text {
	FontLoader { id: mainFont; source: "font/Mukta-Bold.ttf" }
	FontLoader { id: cursiveFont; source: "font/EuphoriaScript-Regular.ttf" }

	font.pointSize: 18
	font.family: cursiveFont.name
	color: Style.textColor
	font.bold: true
}
