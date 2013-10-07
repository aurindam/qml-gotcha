import QtQuick 2.0

Rectangle400x300 {

    Block {
        id: block

        x: 10
        state: "extremeLeft"

        onClicked: state != "extremeRight" ? state = "extremeRight" : state = "extremeLeft"

        states: [
            State {
                name: "extremeRight"
                PropertyChanges { target: block; x: 340 }
            },
            State {
                name: "extremeLeft"
                PropertyChanges { target: block; x: 10 }
            }
        ]
    }

    Label {
        id: label

        text: {
            if (block.x === 10) return "Block is on left edge"
            if (block.x === 340) return "Block is on right edge"
        }
    }
}
