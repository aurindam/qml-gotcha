import QtQuick 2.0

Rectangle400x300 {

    Block {
        id: block

        x: 10

        onClicked: state != "extremeRight" ? state = "extremeRight" : state = ""

        states: [
            State {
                name: "extremeRight"
                PropertyChanges { target: block; x: 340 }
            }
        ]
    }
}
