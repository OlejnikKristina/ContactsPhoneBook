pragma Singleton
import QtQuick 2.0

QtObject {

	readonly property int winWidth: 480
	readonly property int winHeight: 640

	property bool isDarkTheme: true
	readonly property color mainColor: isDarkTheme ? "#3a1c17" : "#6200EE"
	readonly property color mainVariantColor: "#3700B3"
	readonly property color secondaryColor: "#03DAC6"
	readonly property color secondaryVariant: isDarkTheme ? "#018786" : secondaryColor
	readonly property color bgColor: isDarkTheme ? "#FFC107" : "#F48FB1"
	readonly property color colorPink: "#EF9A9A"
	readonly property color colorAccent: "#E91E63"
	readonly property color colorViolet: "#4CAF50"
	readonly property color errorColor: isDarkTheme ? "#CF6679" : "#B00020"
	readonly property color textColor: isDarkTheme ? "#FFFFFF" : "#FF5722"

	readonly property int contactImgSize: 30
	readonly property int contactImgBoxSize: contactImgSize * 2

	readonly property real defaultOpacity: 1
	readonly property real regularOpacity: 0.87
	readonly property real pressedOpacity: 0.6
	readonly property real disabledOpacity: 0.38

	readonly property int xxlOffset: 40
	readonly property int xlOffset: 19
	readonly property int mdOffset: 10
	readonly property int xsOffset: 5

	readonly property int xlSpacing: 20
	readonly property int mdSpacing: 10
	readonly property int xsSpacing: 7
}
