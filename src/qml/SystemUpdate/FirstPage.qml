import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import LingmoUI 1.0 as LingmoUI
import Lingmo.Settings 1.0

Item {
    id: control

    Connections {
        target: updator
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: LingmoUI.Units.largeSpacing * 2

        Image {
            // visible: _updateInfo.count !== 0
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            width: 200
            sourceSize: Qt.size(width, height)
            source: LingmoUI.Theme.darkMode ? "qrc:/images/logo.png" : "qrc:/images/logo.png"
        }

        Layout.fillWidth: true
        Layout.fillHeight: true

        Item {
            Layout.fillWidth: true
            height: 50

            Rectangle {
                anchors.fill: parent
                anchors.leftMargin: LingmoUI.Units.largeSpacing
                anchors.rightMargin: LingmoUI.Units.largeSpacing
                color: LingmoUI.Theme.secondBackgroundColor
                radius: LingmoUI.Theme.mediumRadius
            }

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: LingmoUI.Units.largeSpacing * 1.5
                anchors.rightMargin: LingmoUI.Units.largeSpacing * 1.5
                spacing: LingmoUI.Units.smallSpacing          

                Item {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    ColumnLayout {
                        anchors.fill: parent
                        spacing: 0

                        Item {
                            Layout.fillHeight: true
                        }
                        
                        Label {
                            text: "System Update"
                            Layout.fillWidth: true
                        }

                        Label {
                            text: qsTr("Current Version: %1").arg(updator.version)
                            color: LingmoUI.Theme.disabledTextColor
                        }

                        Item {
                            Layout.fillHeight: true
                        }

                        Item {
                            Layout.fillWidth: true
                        }
                    }
                }

                Button {
                    // Layout.fillWidth: true
                    text: qsTr("Check Update")
                    flat: true
                    // visible: control.error
                    onClicked: {
                        stackView.push(homePage)
                    }
                }
            }
        }
        

        Item {
            Layout.fillHeight: true
        }
    }
}
