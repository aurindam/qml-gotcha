import QtQuick 2.0

Rectangle {
    id: block
    width:50; height:50
    color: "black"
    y: parent.height/2 - height/2

    signal clicked

    MouseArea {
        anchors.fill: parent
        onClicked: block.clicked()
    }
    Behavior on x {
        NumberAnimation {
            duration: 2000
            easing {
                type: Easing.Linear
            }
        }
    }
}
