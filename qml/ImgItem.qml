/*  ImgItem.qml */
import QtQuick 2.7
import QtQuick.Controls 2.2

Rectangle {
        id: root
        radius: units.gu(0.5)
        border.width: units.gu(0.1)
        border.color: "#eee"
        width: parent.width
        height: childrenRect.height
        
    property alias image: img.source
    Image {
      id: img
      width: units.gu(10)
      height: {
        if (root.height < units.gu(10)) {
            units.gu(10)
          } else {
            root.height
          }
        }
      verticalAlignment: Image.AlignTop
      fillMode: Image.PreserveAspectFit
      anchors{
          top: parent.top
          left: parent.left
        }
    }
    property alias text: label.text
    Text {
        id: label
        font.pixelSize: units.gu(3)
        anchors{
          top: parent.top
          left: img.right
          right: parent.right
        }
        wrapMode : Text.WordWrap
        verticalAlignment: Text.AlignVCenter
        color: "#111"
    }
}