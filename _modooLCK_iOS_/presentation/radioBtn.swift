//
//  radioBtn.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/27.
//

import SwiftUI

struct radioBtn: View {
    @State var isChecked: Bool = false
    
    var body: some View {
        Button(action: {
            isChecked.toggle()
        }) {
            HStack(spacing: 4) {
                
                if isChecked {
                    ZStack{
                        Circle()
                            .frame(width: 12, height: 12)
                            .foregroundColor(Color.white)
                            .overlay(
                            RoundedRectangle(cornerRadius: 90)
                                .stroke(.gray, lineWidth: 1)
                                .frame(width: 8, height: 8)
                                
                            )
                    }
                } else{
                    Circle()
                        .frame(width: 12, height: 12)
                        .foregroundColor(Color.clear)
                        .overlay(
                        RoundedRectangle(cornerRadius: 90)
                            .stroke(.white, lineWidth: 1)
                        )
                        
                }
            }
        }
    }
}

#Preview {
    radioBtn()
}
