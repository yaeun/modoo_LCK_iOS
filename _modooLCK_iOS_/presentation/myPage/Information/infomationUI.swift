//
//  infomationUI.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/06.
//

import SwiftUI

struct infomationUI: View {
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
                
                Image("app_image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .padding(.bottom,60)
                    .padding(.top,20)
                
                List{
                    

                        
                    HStack{
                        Text("앱 버전")
                        Spacer()
                        Text("1.0.0")
                    }
                    .listRowBackground(Color.clear)
                    .padding(.vertical,8)
                    
                    Button(action: {
                        
                    }) {
                        Text("개인정보 처리방침")
                    }
                    .listRowBackground(Color.clear)
                    .padding(.vertical,8)
                    
                    Button(action: {
                        
                    }) {
                        Text("서비스 이용약관")
                    }
                    .listRowBackground(Color.clear)
                    .padding(.vertical,8)
                    
                    Button(action: {
                        
                    }) {
                        Text("오픈소스 라이선스")
                    }
                    .listRowBackground(Color.clear)
                    .padding(.vertical,8)
                    
                }
                .listStyle(PlainListStyle())
                .listRowBackground(Color.clear)
                .tint(.gray)
                .font(
                    Font.custom("Cafe24 Ohsquare air OTF", size: 18)
                        .weight(.light)
                )
                .foregroundColor(.white)
                .padding(.horizontal,20)
            }
        }
    }
}

#Preview {
    infomationUI()
}
