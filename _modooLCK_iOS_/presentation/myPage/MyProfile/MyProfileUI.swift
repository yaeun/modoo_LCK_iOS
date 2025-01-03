//
//  MyProfileUI.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/05.
//

import SwiftUI

struct MyProfileUI: View {
    var body: some View {
        ZStack {
            // 배경 이미지
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Topbar_single(Title: "MyProfile")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                myPageUserInfo(nickname: "Deft 조아",rank: "Gold")
                .padding(.vertical,60)
                
                RankUI()
                    .padding(.horizontal,40)
                
                MyProfileMenu()
                    .padding(.top,40)
            }
        }
    }
}

#Preview {
    MyProfileUI()
}
