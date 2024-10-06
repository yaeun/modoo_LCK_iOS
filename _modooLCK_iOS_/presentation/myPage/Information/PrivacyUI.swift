//
//  PrivacyUI.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/06.
// Privacy_Text.Privacy_Text_long

import SwiftUI

struct PrivacyUI: View {
    var body: some View {
        ZStack {
            // 배경 이미지
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Topbar_single(Title: "Information")
                    .frame(height: 50)
                    .frame(maxWidth: 380)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.bottom,40)
                
                Text("개인정보 처리방침")
                    .font(.Cafe24Air)
                    .foregroundColor(.white)
                    .frame(width: 296, alignment: .leading)
                    .padding(.bottom,32)
                
                ScrollView{
                    Text(Privacy_Text.Privacy_Text_long)
                        .font(
                        Font.custom("Cafe24 Ohsquare air OTF", size: 8)
                        .weight(.light)
                        )
                }
                .frame(width: 300,height: 460)
                
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    PrivacyUI()
}
