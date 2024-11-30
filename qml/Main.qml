import Felgo 3.0
import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Window 2.0

App {
    SwipeView{
        id: view
        interactive: SwipeView.ForceElasticity
        currentIndex: 0
        anchors.fill: parent

        Page {
            Rectangle {
                anchors.fill: parent
                color: "red"
                Text {
                    anchors.centerIn: parent
                    text: "red-page"
                }
            }
        }
        Page {
            Rectangle {
                anchors.fill: parent
                color: "yellow"
                Text {
                    anchors.centerIn: parent
                    text: "yellow-page"
                }
            }
        }
        Page {
            Rectangle {
                anchors.fill: parent
                color: "green"
                Text {
                    anchors.centerIn: parent
                    text: "green-page"
                }
            }
        }


    }
    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
