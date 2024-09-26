//
//  Topbar_3.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/10.
//

import SwiftUI

struct Topbar_3: View {
    var Title: String
    var SubTitle: String
    var body: some View {
        HStack(alignment: .center) {
            Image("Topbar_Right")
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .scaleEffect(x: -1, y: 1)
            
            Spacer()
            
            VStack(alignment: .center, spacing: 8) {
    
                Text(Title)
                    .font(Font.custom("Cafe24 Ohsquare", size: 20))
                    .kerning(0.2)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                    
             
                Text(SubTitle)
                    .font(
                        Font.custom("Cafe24 Ohsquare air", size: 12)
                            .weight(.light)
                    )
                    .kerning(0.12)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(0)
            .frame(width: 82, alignment: .center)
            
            Spacer()
            
            Rectangle()
                .frame(width: 45, height: 45)
                .foregroundColor(.clear)

          
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 4)
        .frame(width: 360, height: 56, alignment: .center)
        
    }
}

#Preview {
    Topbar_3(Title: "Title", SubTitle: "SubTitle")
}

