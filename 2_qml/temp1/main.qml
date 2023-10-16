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













    // CheckBox {
    //     anchors.centerIn: parent
    //     id:  cb
    //     text: "Show Window #2"
    // }

    // Loader {
    //     active: cb.checked
    //     anchors.centerIn: parent
        
    //     sourceComponent: Component {
    //         ApplicationWindow {   // Or "SecondWindow"
    //             visible: true
    //             width: 640
    //             height: 480
    //             title: "Window 2"
    //         }
    //     }
    // }
}