//
//  radioBtn.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/27.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
    @Environment(\.isEnabled) var isEnabled

    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }, label: {
            HStack {
                Image(systemName: configuration.isOn ? "circle.fill" : "circle")
                    .frame(width: 12,height: 12)
                    .foregroundColor(.white)

                configuration.label
            }
        })
        .buttonStyle(PlainButtonStyle())
        .disabled(!isEnabled)
    }
}
