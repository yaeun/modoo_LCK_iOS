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
                
                myPageUserInfo(nickname: "Deft 조아",rank: "Gold")
                .padding(.vertical,60)
                
                myPageMenu()
                }
        }
    }
}

#Preview {
    MyPageUI()
}
