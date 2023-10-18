import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    visible: true
    width: 480
    height: 400
    title: "Window 1"

    function updateColor() {
        window.color = window.color = Qt.rgba(Math.random(), Math.random(),Math.random())
    }

    MyButton {
        id: myButton
        text: "click me"
        anchors.centerIn: parent
        onClicked: {
            window.updateColor()
        }
    }
}