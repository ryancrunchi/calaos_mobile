import QtQuick 2.5
import SharedComponents 1.0
import QtQuick.Layouts 1.1

Item {
    property variant modelData

    width: Units.dp(218)
    height: Units.dp(300)

    Image {
        id: ico
        source: "qrc:/img/icon_camera_title.png"
        anchors {
            left: parent.left; leftMargin: Units.dp(8)
            top: parent.top; topMargin: Units.dp(7)
        }
    }

    Text {
        id: title
        elide: Text.ElideMiddle
        font.pixelSize: Units.dp(13)
        font.family: calaosFont.fontFamily
        horizontalAlignment: Text.AlignLeft
        font.weight: Font.Light
        color: Theme.whiteColor
        anchors {
            left: ico.right; leftMargin: Units.dp(5)
            verticalCenter: ico.verticalCenter
            right: parent.right; rightMargin: Units.dp(5)
        }
        text: modelData.name
    }

    Image {
        id: cambg
        source: "qrc:/img/camera_border.png"
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: ico.bottom; topMargin: Units.dp(4)
        }

        Image {
            source: "qrc:/img/camera_nocam.png"
            anchors.centerIn: parent
        }

        Image {
            id: cameraPic
            source: modelData.url_single
            anchors {
                fill: parent
                leftMargin: Units.dp(14); rightMargin: Units.dp(14)
                topMargin: Units.dp(14); bottomMargin: Units.dp(14)
            }
        }
    }

    Image {
        source: "qrc:/img/camera_reflect.png"
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
        }
    }


}
