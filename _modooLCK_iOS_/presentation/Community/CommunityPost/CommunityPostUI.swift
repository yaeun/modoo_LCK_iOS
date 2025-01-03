//
//  CommunityPostUI.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/06.
//

import SwiftUI

struct CommunityPostUI: View {
    var body: some View {
        ZStack {
            // 배경 이미지
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
           
             //   Spacer().frame(height: 180)
               
                
               
            
                VStack{
                    detailTopbar()
                        .frame(height: 90)
                        .frame(maxWidth: 380)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .padding(.bottom,10)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 360, height: .infinity)
                        .background(.white.opacity(0.9))
                        .cornerRadius(20)
                        .overlay(
                            postMenu()
                            )
                }
                
            }
        }
    }


#Preview {
    CommunityPostUI()
}
