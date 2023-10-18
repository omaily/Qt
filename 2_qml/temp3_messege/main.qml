import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    visible: true
    width: 480
    height: 400
    title: "Window 1"

    footer: MyLetter {
    }

    ListModel {
        id: dialogueModel
        dynamicRoles: true

        Component.onCompleted: {
            append({ text: "dinamic 1", time: "14:33" })
            append({ text: "dinamic 2", time: "23:00" })
        }

        ListElement {
            color: "orange"
            text: "Во мне нет сомнений, даже малейших \nТы сейчас слушаешь двух самых мощнейших\nОни уважают нас, как старейшин\nЭтот свитер Louis впечатляет женщин"
            time: "14:33"
        }
        ListElement {
            color: "orange"
            text: "Меня любят бабки, но я без морщин \nСуки все хотят себе таких мужчин \nВзяли тридцатку, знаю, что борщим \nОставим дырку в голове — будешь как дельфин"
            time: "14:33"
        }
        ListElement {
            color: "skyblue"
            text: "Выхожу во двор, я стреляю как Global \nОни падают как рубль, а я расту как доллар"
            time: "14:33"
        }
    }

    ListView {
        id: dialogueList
        model: dialogueModel

        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        delegate: MyBalloon {
            text: model.text
            time: model.time
        }
    }
}

