import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12


RowLayout {
    property alias title: myTitle.text
    property alias inputText: myInput.text
    property var numSult: 0
    signal sigCalculate()

    TextInput {
        id: myTitle
        Layout.preferredWidth: 100; Layout.preferredHeight: parent.height-10
        text: qsTr("text")
        font.family: "Tahoma"
        font.pointSize: 20
        color: "#293047"
        horizontalAlignment: Text.AlignLeft
        Layout.alignment: Qt.AlignVCenter || Qt.AlignLeft
    }

    TextField{
        id: myInput
        Layout.preferredWidth: 150; Layout.preferredHeight: parent.height-10
        Layout.minimumWidth: 85
        horizontalAlignment: TextField.AlignHCenter
        verticalAlignment: TextField.AlignVCenter
        Layout.alignment: Qt.AlignVCenter || Qt.AlignHCenter
        text: qsTr("0")
        font: myTitle.font
        validator: IntValidator{
            bottom: 0; top: 9999999
        }
        onPressed: text = ''
    }

    Text {
        id: myIcon
        Layout.preferredWidth: 36; Layout.preferredHeight: 36
        text: qsTr("\ue604")
        font.family: "iconfont"
        color: "#1565C0"
        font.pointSize: 36
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        Layout.alignment: Qt.AlignVCenter || Qt.AlignHCenter
        state: "add"
        states: [
            State {
                name: "sub"
                PropertyChanges {
                    target: myIcon; text: qsTr("\ue613"); color: "red"
                }
            },
            State {
                name: "add"
                PropertyChanges {
                    target: myIcon; text: qsTr("\ue604"); color: "#1565C0"
                }
            }
        ]

        MouseArea{
            anchors.fill: parent
            onClicked: {
                if(myInput.text == "0")
                    return
                else if(myIcon.state == "sub"){
                    numSult = Calculate.calculateSubNum(myInput.text)
                    myIcon.state = "add"
                }else if(myIcon.state == "add"){
                    numSult = Calculate.calculateAddNum(myInput.text)
                    myIcon.state = "sub"
                }

                sigCalculate(numSult)
            }
        }
    }

    Connections{
        target: Calculate
        onSigReset:{
            myInput.text = 0
            myIcon.state = "add"
        }
    }
}

