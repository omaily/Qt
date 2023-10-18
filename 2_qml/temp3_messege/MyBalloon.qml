import QtQuick 2.12
import QtQuick.Controls 2.5

Item {
        id: root

        property alias text: lblText.text
        property alias time: lblTime.text
        property int customPixelSize: 12
        property int customMargins: 10

        // margin с верху и снизу => *2 
        height: lblText.contentHeight + customMargins*2  + lblTime.contentHeight
        width: parent.width
        clip: true

        Rectangle{
            // color: Qt.rgba(40, 90, 200, 1);
            color: '#aa3d8bff'
            anchors.fill: parent
            radius: 10

            Text {
                id: lblText
                font.pointSize: customPixelSize
                wrapMode: Text.WordWrap // перенос текста

                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: customMargins
            }

            Text {
                id: lblTime
                font.pointSize: 2*customPixelSize/3
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.margins: 2*customMargins/3
            }
        }
    }