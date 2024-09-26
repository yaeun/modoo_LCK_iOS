//
//  Topbar_single.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/12.
//

import SwiftUI

struct Topbar_single: View {
    var Title: String
    var body: some View {
        HStack(alignment: .center) {
            Image("Topbar_Right")
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .scaleEffect(x: -1, y: 1)
            
            Spacer()
            
            Text(Title)
                .font(Font.custom("Cafe24 Ohsquare", size: 20))
                .kerning(0.2)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(alignment: .center)
         
            Spacer()
            
            Rectangle()
                .frame(width: 45, height: 45)
                .foregroundColor(.clear)

        }
        .padding(0)
    }
}

#Preview {
    Topbar_single(Title: "title")
}
