import Qt 4.6

Rectangle {
    width: 800; height: 240; color: "gray"

    Rectangle {
        id: rect
        width: 50; height: 20; y: 30; color: "black"
        SequentialAnimation on x {
            loops: Animation.Infinite
            NumberAnimation { from: 50; to: 700; duration: 2000 }
            NumberAnimation { from: 700; to: 50; duration: 2000 }
        }
    }

    Rectangle {
        width: 50; height: 20; y: 60; color: "red"
        EaseFollow on x { source: rect.x; velocity: 400 }
    }

    Rectangle {
        width: 50; height: 20; y: 90; color: "yellow"
        EaseFollow on x { source: rect.x; velocity: 300; reversingMode: EaseFollow.Immediate }
    }

    Rectangle {
        width: 50; height: 20; y: 120; color: "green"
        EaseFollow on x { source: rect.x; reversingMode: EaseFollow.Sync }
    }

    Rectangle {
        width: 50; height: 20; y: 150; color: "purple"
        EaseFollow on x { source: rect.x; maximumEasingTime: 200 }
    }

    Rectangle {
        width: 50; height: 20; y: 180; color: "blue"
        EaseFollow on x { source: rect.x; duration: 300 }
    }
}