//
//  logoCell_roundText.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/06.
//

import SwiftUI

struct logoCell_roundText: View {
    var Text_1: String
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text(Text_1)
            .font(
            Font.custom("Cafe24 Ohsquare air OTF", size: 8)
            .weight(.light)
            )
            .multilineTextAlignment(.center)
            .foregroundColor(.black)
        }
        .padding(.horizontal, 6)
        .padding(.vertical, 4)
        .cornerRadius(12)
        .overlay(
        RoundedRectangle(cornerRadius: 12)
        .inset(by: 0.2)
        .stroke(.black, lineWidth: 0.4)

        )
    }
}

#Preview {
    logoCell_roundText(Text_1:"# 응원게시판")
}
