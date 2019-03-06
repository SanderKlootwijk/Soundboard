import QtQuick 2.4
import QtMultimedia 5.0
import Ubuntu.Components 1.3

Button {
    id: button
    width: parent.width
    antialiasing: true
    property alias color: button.color
    property alias soundSource: sound.source
    onClicked: {
        if (sound.playbackState == 1){
            sound.stop()
        }
        else{
            sound.stop()
            sound.play()
       }
    }

    Audio {
        id: sound
    }
}
