//
//  homeAboutLCK.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/09.
//

import SwiftUI

struct homeAboutLCK: View {
    var body: some View {
        Rectangle()
        .foregroundColor(.clear)
        .frame(width: 141, height: 170)
        .cornerRadius(8)
        .overlay(
        RoundedRectangle(cornerRadius: 8)
        .inset(by: 0.5)
        .stroke(Color(red: 0.46, green: 0.45, blue: 0.45), lineWidth: 1)
        )
        .overlay(
            VStack{
                
                HStack(alignment:.top){
                    
                    VStack(alignment:.leading){
                        Text("About")
                        Text("LCK")
                            .bold()
                    }
                    .font(.system(size: 16))
                    .foregroundColor(.white)

                    Spacer()
                    Spacer()
                    
                    Image("arrow_right")
                    
                    Spacer()
                }
                .padding(.top,15)
                .padding(.leading,12)
                
                Spacer()
                
                Image("Btn_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 66)
                    .padding(.leading,24)
                    .padding(.bottom,8)
            }
                )
            
    }
}

#Preview {
    homeAboutLCK()
}

