import QtQuick 2.7
import Ubuntu.Components 1.3
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import io.thp.pyotherside 1.3
import "./"

MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'example-listbox.yourname'
    automaticOrientation: true
    width: units.gu(45)
    height: units.gu(75)
    
    ListView {
        id: grig 
        anchors{
            fill: parent
            margins : units.gu(1);
        }
        spacing: units.gu(0.5)
        model: listModel
        delegate: ImgItem {
            text: txt
            image: img
        }
    }
    ListModel{
        id:listModel
    }
    Python {
        id: python
        Component.onCompleted: {
            addImportPath(Qt.resolvedUrl('../src/'));
            for (var i = 0; i < 10; i++)  {
            importModule('example', function() {
                console.log('module imported');
                python.call('example.speak', [], function(returnValue) {
                    var newItem = {}
                    newItem.img = returnValue[0]
                    newItem.txt = returnValue[1]
                    listModel.append(newItem)
                })
            });
            }
        }
        onError: {
            console.log('python error: ' + traceback);
        }
    }
}
