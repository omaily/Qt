import QtQuick 2.12
import QtQuick.Controls 2.5

Item {
    id: root
    anchors.bottom: parent.bottom
    width: parent.width
    height: 26
    clip: true

    Rectangle{

        anchors.fill: parent

        Rectangle {
            id: messages
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: 3*parent.width/4
            color: Qt.rgba(0, 0.1, 1, 0.2)
            
            Text {
                anchors.verticalCenter: parent.verticalCenter
                text: "messege..."
            }
        }

        Button {
            id: send
            text: "Отправить"
            background: Rectangle {
                color: parent.down ? "#61296bd6" : (parent.hovered ? "#11296bd6" : "#aafd8bff")
            }
        

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: messages.right
            anchors.right: parent.right
            
            onClicked: {
                messages.color = Qt.rgba(Math.random(), Math.random(),Math.random(), 0.1)
            }
        }
    }
}