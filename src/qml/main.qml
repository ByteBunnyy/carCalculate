import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.12
import "./component"

ApplicationWindow {
    visible: true
    width: Screen.desktopAvailableWidth; height: Screen.desktopAvailableHeight
    Material.theme: Material.Light
    Material.accent: Material.Indigo

    header: Rectangle{
        width: parent.width; height: 85
        color: "#1565C0"
        Text {
            text: qsTr("哈弗汽车 购车试算")
            anchors.centerIn: parent
            font.pointSize: 36
            font.family: "Tahoma"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: "#FFFFFF"
        }
    }

    BodyPage{
        anchors.fill: parent
    }

    footer: Rectangle{
        width: parent.width; height: 120
        Image {
            source: "qrc:/havalLogo.png"
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            width: 240; height: 100
        }
    }
}
