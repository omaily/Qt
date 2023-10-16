package main

import (
	"os"

	"github.com/therecipe/qt/widgets"
)

func window2() {
	//1. Создайте новое приложение
	widgets.NewQApplication(len(os.Args), os.Args) // ... передайте параметры командной строки (иначе "nil")

	//2. Создайте главное окно
	window := widgets.NewQMainWindow(nil, 0)
	window.SetWindowTitle("Заголовок главного окна")
	window.SetMinimumSize2(400, 100)

	//3. Создайте макет ⇒ https://doc.qt.io/qt-5/qlayout.html
	layout := widgets.NewQHBoxLayout()

	//4. Создайте виджет и назначьте макет для виджета
	widget := widgets.NewQWidget(nil, 0)
	widget.SetLayout(layout)

	//5-1. Создайте строку ввода
	input := widgets.NewQLineEdit(nil)
	input.SetPlaceholderText("Напиши здесь что-нибудь!")

	//5-2. Создайте кнопку
	button := widgets.NewQPushButton2("Кликай сюда", nil)
	button.ConnectClicked(func(checked bool) {
		//6. Назначьте действие на кнопку, которое должно
		//   выполняться при её нажатии
		widgets.QMessageBox_Information(nil, "Заголовок информ. окна", input.Text(), widgets.QMessageBox__Ok, widgets.QMessageBox__Ok)
	})

	//7.  Назначьте виджеты ввода макету
	layout.AddWidget(input, 0, 0)  // ⇒ http://doc.qt.io/qt-5/qboxlayout.html#addWidget
	layout.AddWidget(button, 0, 0) // ⇒ https://doc.qt.io/qt-5/qboxlayout.html#addWidget

	//8. Главный виджет должен быть назначен главному окну
	window.SetCentralWidget(widget)

	//9. Выведите главное окно
	window.Show()

	//10. Чтобы приложение могло динамически реагировать на пользовательский ввод/события,
	//    оно должно работать в бесконечном цикле.
	widgets.QApplication_Exec()
}
