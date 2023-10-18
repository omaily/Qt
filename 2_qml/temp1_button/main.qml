import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    visible: true
    width: 480
    height: 400
    title: "Window 1"

    Button {
        id: button1
        text: "click me"
        anchors.centerIn: parent
        onClicked: {
            window.color = Qt.rgba(Math.random(), Math.random(),Math.random())
        }
    }
}