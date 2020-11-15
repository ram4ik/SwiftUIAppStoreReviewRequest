//
//  FilleRoundedCornerButton.swift
//  SwiftUIAppStoreReviewRequest
//
//  Created by Ramill Ibragimov on 15.11.2020.
//

import SwiftUI

struct FilleRoundedCornerButton: ButtonStyle {
    var font: Font = .title2
    var padding: CGFloat = 8
    var bgColor = Color.blue
    var fgColor = Color.white
    var cornerRadius: CGFloat = 8
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(font)
            .padding(padding)
            .background(bgColor)
            .foregroundColor(fgColor)
            .cornerRadius(cornerRadius)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            .animation(.spring())
    }
}
