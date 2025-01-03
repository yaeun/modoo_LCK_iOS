//
//  accountOutUI.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/05.
//

import SwiftUI

struct accountOutUI: View {
    var body: some View {
        ZStack {
            // 배경 이미지
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Topbar_single(Title: "계정탈퇴")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                Text(Account_Text.Account_Text_long)
                    .font(
                    Font.custom("Cafe24 Ohsquare air OTF", size: 14))
                    .frame(width: 330,height: 532)
                    .padding(.top,-20)
                
                
                Button(action: {
                    
                }) {
                    Text("중복 확인")
                        .font(
                        Font.custom("Cafe24 Ohsquare air", size: 18)
                        .weight(.light)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .overlay(
                        RoundedRectangle(cornerRadius: 12)
                        .inset(by: 0.2)
                        .stroke(Color("#8C8C8C"))
                        )
                    
                }
                .padding(.top,80)
                
                Spacer()
            }
        }
    }
}

#Preview {
    accountOutUI()
}
