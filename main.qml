import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.12
import Lamp.backend 1.0


Window {
    width: 640
    height: 480
    visible: true
    color: "#dbf7fd"
    title: qsTr("Hello World")

    Lamp{
        id: my_lamp
    }

    GroupBox {
        id: groupBox
        x: 111
        y: 10
        width: 245
        height: 174
        title: qsTr("Phong Khach")
        GridLayout {
            x: 40
            y: 27
            rows: 1
            columns: 2

            Image {
                id: image1
                source: "qrc:/img/off.png"
                Layout.preferredHeight: 46
                Layout.preferredWidth: 60
                fillMode: Image.PreserveAspectFit
            }

            Switch {
                id: switch1
                text: qsTr("Den 1")
                Layout.preferredHeight: 120
                Layout.preferredWidth: 150
                property bool check: false
                onClicked: {
                    my_lamp.set_pin(0);
                    my_lamp.set_pin_mode(1);
                    check = !check;
                    if(true == check)
                    {
                        my_lamp.on_machine();
                    }
                    else
                    {
                        my_lamp.off_machine();
                    }
                    image1.source =  check == true ?  "qrc:/img/on.png" : "qrc:/img/off.png"
                }
            }
        }

        Slider {
            id: slider
            x: -12
            y: 166
            width: 245
            height: 36
            value: 0.5
        }

        Slider {
            id: slider1
            x: 245
            y: 166
            width: 244
            height: 36
            value: 0.5
        }
    }

    GroupBox {
        id: groupBox1
        x: 368
        y: 10
        width: 242
        height: 174
        title: qsTr("Phong Ngu")
        GridLayout {
            x: 40
            y: 27
            columns: 2
            Image {
                id: image2
                source: "qrc:/img/off.png"
                Layout.preferredWidth: 60
                fillMode: Image.PreserveAspectFit
                Layout.preferredHeight: 46
            }

            Switch {
                id: switch2
                text: qsTr("Den 2")
                Layout.preferredWidth: 150
                property bool check_2: false
                onClicked: {
                    check_2 = !check_2;
                    image2.source =  check_2 == true ?  "qrc:/img/on.png" : "qrc:/img/off.png"
                }
                Layout.preferredHeight: 120
            }
            rows: 1

        }
    }
    TabBar {
        id: bar
        x: 0
        y: 440
        width: parent.width


        Repeater {
            model: ["First", "Second", "Third", "Fourth", "Fifth"]

            TabButton {
                text: modelData
                width: Math.max(100, bar.width / 5)
            }
        }
    }
    AnimatedImage {
        id: animatedImage3
        x: 5
        y: 20
        width: 100
        height: 100
        source: "qrc:/img/img/home_animation.gif"
    }



    GroupBox {
        id: groupBox2
        x: 20
        y: 224
        width: 590
        height: 200
        title: qsTr("Weather")
        AnimatedImage {
            id: animatedImage
            x: 27
            y: 53
            width: 100
            height: 100
            source: "qrc:/img/img/sun.gif"


        }
        AnimatedImage {
            id: animatedImage2
            x: 313
            y: 53
            width: 100
            height: 100
            source: "qrc:/img/img/snow_2.gif"
        }

        AnimatedImage {
            id: animatedImage1
            x: 169
            y: 53
            width: 100
            height: 100
            source: "qrc:/img/img/rain_2.gif"
        }



        AnimatedImage {
            id: animatedImage4
            x: 455
            y: 53
            width: 100
            height: 100
            source: "qrc:/img/img/storm.gif"
        }
    }


}
