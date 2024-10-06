//
//  MyPageUI.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/12.
//

import SwiftUI

struct MyPageUI: View {
    var body: some View {
        ZStack {
            // 배경 이미지
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Topbar_single(Title: "MyPage")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                myPageUserInfo(nickname: "Deft 조아",rank: "Gold")
                .padding(.vertical,30)
                
                myPageMenu()
                }
        }
    }
}

#Preview {
    MyPageUI()
}
