//
//  myPageUserInfo.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/12.
//

import SwiftUI

struct myPageUserInfo: View {
    @State var nickname : String
    @State var rank : String
    var body: some View {
        VStack(alignment:.center){
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 96, height: 101.67088)
                .background(
                    Image("PATH_TO_IMAGE")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 96, height: 101.67088317871094)
                        .clipped()
                )
                .cornerRadius(4)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .inset(by: 0.5)
                        .stroke(.white, lineWidth: 1)
                )
            
            Text(nickname)
                .font(Font.custom("Cafe24 Ohsquare", size: 20))
                .kerning(0.2)
                .foregroundColor(Color(red: 0.89, green: 0.89, blue: 0.95))
                .padding(.top,12)
            
            HStack(alignment:.center){
                Text("My Tier | ")
                  .font(
                    Font.custom("Cafe24 Ohsquare air OTF", size: 12)
                      .weight(.light)
                  )
                  .foregroundColor(.white)
                  .padding(.top,8)
                
                Text(rank)
                  .font(
                    Font.custom("Cafe24 Ohsquare air OTF", size: 12)
                      .weight(.light)
                  )
                  .kerning(0.12)
                  .foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.05))
            }
        }

    }
}

#Preview {
    MyPageUI()
}
