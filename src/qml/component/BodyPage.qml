import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.12

ColumnLayout {
    Layout.preferredWidth: parent.width-50; Layout.preferredHeight: parent.height-50
    anchors.centerIn: parent
    MyEditLene{
        id: firstEditLine
        Layout.preferredWidth: parent.width-50; Layout.preferredHeight: 65
        Layout.alignment: Qt.AlignHCenter
        title: qsTr("车价")
        onSigCalculate:{
            result.text = numSult
        }
    }
    MyEditLene{
        Layout.preferredWidth: firstEditLine.width; Layout.preferredHeight: 65
        Layout.alignment: Qt.AlignHCenter
        title: qsTr("购置税")
        onSigCalculate:{
            result.text = numSult
        }
    }
    MyEditLene{
        Layout.preferredWidth: firstEditLine.width; Layout.preferredHeight: 65
        Layout.alignment: Qt.AlignHCenter
        title: qsTr("上户费")
        onSigCalculate:{
            result.text = numSult
        }
    }
    MyEditLene{
        Layout.preferredWidth: firstEditLine.width; Layout.preferredHeight: 65
        Layout.alignment: Qt.AlignHCenter
        title: qsTr("首付")
        onSigCalculate:{
            result.text = numSult
        }
    }
    MyEditLene{
        Layout.preferredWidth:firstEditLine.width; Layout.preferredHeight: 65
        Layout.alignment: Qt.AlignHCenter
        title: qsTr("贷款")
        onSigCalculate:{
            result.text = numSult
        }
    }
    MyEditLene{
        Layout.preferredWidth: firstEditLine.width; Layout.preferredHeight: 65
        Layout.alignment: Qt.AlignHCenter
        title: qsTr("服务费")
        onSigCalculate:{
            result.text = numSult
        }
    }
    MyEditLene{
        Layout.preferredWidth: firstEditLine.width; Layout.preferredHeight: 65
        Layout.alignment: Qt.AlignHCenter
        title: qsTr("月供")
        onSigCalculate:{
            result.text = numSult
        }
    }
    MyEditLene{
        Layout.preferredWidth: firstEditLine.width; Layout.preferredHeight: 65
        Layout.alignment: Qt.AlignHCenter
        title: qsTr("保险")
        onSigCalculate:{
            result.text = numSult
        }
    }

    RowLayout{
        Layout.preferredWidth: firstEditLine.width; Layout.preferredHeight: 50
        Layout.alignment: Qt.AlignHCenter
        Text {
            text: qsTr("结果")
            color: "#1565C0"
            font.pointSize: 24
            font.family: "Tahoma"
            Layout.preferredWidth: 100; Layout.preferredHeight: parent.height
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

        Text{
            id: result
            font.bold: true
            font.italic: true
            color: "#1565C0"
            font.pointSize: 27
            font.family: "Tahoma"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: qsTr("0")
            Layout.preferredWidth: 150; Layout.preferredHeight: parent.height
        }

        Button{
            id: btnReset
            Layout.alignment: Qt.AlignVCenter
            Layout.preferredHeight: parent.height
            Material.background: "#1565C0"
            Material.foreground: "#FFFFFF"
            text: qsTr("重置")
            onClicked: {
                Calculate.btnReset()
            }
        }
    }

    Connections{
        target: Calculate
        onSigReset:{
            result.text = 0
        }
    }
}

