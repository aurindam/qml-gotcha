import QtQuick 2.0

Rectangle {
    id: text
    width: 100
    height: 100

    anchors.centerIn: parent

    property color textColor
    signal clicked

    Text {
        anchors.centerIn: parent
        text: "Hello people!"
        color: textColor
    }
    MouseArea {
        anchors.fill: parent
        onClicked: text.clicked()
    }
}
