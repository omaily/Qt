import QtQuick 2.12
import QtQuick.Controls 2.5

Item {
    id: root
    property int size: 100
    property color primary_color: "lightgrey"
    // property color primary_color: "red"
    property string text: caption.text

    signal clicked()
    width: size
    height: size

    Rectangle{
        anchors.fill: parent
        radius: root.size/2
        color: mouseArea.containsPress ?
            Qt.rgba(root.primary_color.r, root.primary_color.g, root.primary_color.b, root.primary_color.a/1.4):
            root.primary_color

        Text {
            id: caption
            anchors.centerIn: parent
            text: "Click me"
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                root.clicked();
            }
        }
    }
}