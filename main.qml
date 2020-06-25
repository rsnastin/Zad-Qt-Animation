import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Zadania")
    //Poczatek Zad1
    Text{
        id: tesktStandarowy
        text:"Wciśnięto"

    }
    ListModel{
        id: myModel
        ListElement{
            name:"String"
        }

    }


    Item{
        id: item1
        width: 20
        height: 80
        Rectangle{
            id: myRect
            color: "#FFFFE0"
            width: parent.height
            height: parent.width
            MouseArea
            {
                ListView{
                    model: myModel
                    delegate: Text  {text: name}

                }

                id: mouseArea
                anchors.fill: parent
                onPressed: myRect.state == 'pressed' ? myRect.state = "" : myRect.state = 'pressed';
                onPressAndHold: myRect.state == 'onhold' ? myRect.state = "" : myRect.state = 'onhold';
                onReleased: myRect.state == 'released' ? myRect.state = "" : myRect.state = 'released'
            }
            states: [
                State {
                    name: "pressed"
                    PropertyChanges { target: myRect; color: "#FFFFE0"; opacity: 0.1 }
                },
                State {
                    name: "onhold"
                    PropertyChanges { target: myRect; color: "#FFFFE0"; opacity: 0.1 }
                },
                State {
                    PropertyChanges { target: myRect; color: "#FFFFE0"; }
                    name: "released"

                }
            ]
        }
    }
    //Koniec Zad1

    Rectangle{
        id: rect1
        x:50
        y:100
        color: "red"
        rotation:0
        Behavior on color {
            ColorAnimation {duration: 1000}
        }
        Behavior on width {
            NumberAnimation {duration: 1000}
        }
        Behavior on height {
            NumberAnimation {duration: 1000}
        }
        Behavior on rotation {
            NumberAnimation {duration: 1000}
        }
        width: 100
        height: 100
        MouseArea
        {
            id: rect1Area
            anchors.fill: parent
            onPressed: rect1.state == 'pressed' ? rect1.state = "" : rect1.state = 'pressed';

            onPressAndHold: rect1.state == 'onhold' ? rect1.state = "" : rect1.state = 'onhold';
            onReleased: rect1.state == 'released' ? rect1.state = "" : rect1.state = 'released'
        }
        states: [
            State {
                name: "pressed"
                PropertyChanges { target: rect2; color: "green"; width:150; height:150;  rotation: 45; x:320; y:140; }

            },
            State {
                name: "onhold"
                PropertyChanges { target: rect2; color: "green"; width:150; height:150; rotation: 45; x:320; y:140;}

            },
            State {
                PropertyChanges { target: rect2; color: "orange"}
                name: "released"

            }
        ]
    }

    Rectangle{
        id: rect2
        x: 300
        y:100
        color: "orange"
        rotation:0
        Behavior on color {
            ColorAnimation {duration: 1000}
        }
        Behavior on width {
            NumberAnimation {duration: 1000}
        }
        Behavior on height {
            NumberAnimation {duration: 1000}
        }
        Behavior on rotation {
            NumberAnimation {duration: 1000}
        }
        width: 100
        height: 100
        MouseArea
        {
            id: rect2Area
            anchors.fill: parent
            onPressed: rect2.state == 'pressed' ? rect2.state = "" : rect2.state = 'pressed';
            onPressAndHold: rect2.state == 'onhold' ? rect2.state = "" : rect2.state = 'onhold';
            onReleased: rect2.state == 'released' ? rect2.state = "" : rect2.state = 'released'
        }
        states: [
            State {
                name: "pressed"
                PropertyChanges { target: rect1; color: "blue"; width:150; height:150; rotation: 45; x:60; y:140}
            },
            State {
                name: "onhold"
                PropertyChanges { target: rect1; color: "blue"; width:150; height:150; rotation: 45; x:60; y:140}
            },
            State {
                PropertyChanges { target: rect1; color: "red"}
                name: "released"

            }
        ]
    }




}

