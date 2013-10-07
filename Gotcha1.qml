import QtQuick 2.0

Rectangle400x300 {
    id: myRect

    property color myColor: "black"

    color: myColor

    MyTextArea {
        id: textArea

        textColor: myColor

        onClicked: state != 'clicked' ? state = 'clicked' : state = '';

        states: [
            State {
                name: "clicked"
                property color myColor: "red"
                PropertyChanges { target: myRect; color: myColor }
                PropertyChanges { target: textArea; textColor: myColor }
            }
        ]
    }
}
