// SPDX-FileCopyrightText: 2021 Nheko Contributors
// SPDX-FileCopyrightText: 2022 Nheko Contributors
//
// SPDX-License-Identifier: GPL-3.0-or-later

import QtGraphicalEffects 1.12
import QtQuick 2.9
import QtQuick.Controls 2.5
import im.nheko 1.0

// FIXME(Nico): Don't use hardcoded colors.
Button {
    id: control

    implicitHeight: Math.ceil(control.contentItem.implicitHeight * 1.70)
    implicitWidth: Math.ceil(control.contentItem.implicitWidth + control.contentItem.implicitHeight)
    hoverEnabled: true

    DropShadow {
        anchors.fill: control.background
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8
        samples: 17
        cached: true
        color: "#80000000"
        source: control.background
    }

    contentItem: Text {
        text: control.text
        //font: control.font
        font.capitalization: Font.AllUppercase
        font.pointSize: Math.ceil(fontMetrics.font.pointSize * 1.5)
        //font.capitalization: Font.AllUppercase
        color: Nheko.colors.light
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        //height: control.contentItem.implicitHeight * 2
        //width: control.contentItem.implicitWidth * 2
        radius: height / 8
        color: Qt.lighter(Nheko.colors.dark, control.down ? 1.4 : (control.hovered ? 1.2 : 1))
    }

}
