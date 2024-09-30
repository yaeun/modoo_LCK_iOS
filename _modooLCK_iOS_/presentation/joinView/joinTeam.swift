   //
//  joinTeam.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/09.
//

import SwiftUI

struct joinTeam: View {
    var body: some View {
        ZStack(alignment: .top) {
            // 배경 이미지
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Topbar_2(Title: "회원가입", SubTitle: "프로필 사진 추가")
                    .frame(height: 60)
                    .padding(.top, 20)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0)
                
                
                Text("한 팀만 선택할 수 있습니다")
                    .font(
                        Font.custom("Cafe24 Ohsquare air", size: 12)
                            .weight(.light)
                    )
                    .kerning(0.08)
                    .foregroundColor(Color(red: 0.95, green: 0.43, blue: 0.43))
                    .padding(.top, 20)
                
                Teamselect()
                    .padding(.top, 76)
                
            }
        }
    }
    }
#Preview {
    joinTeam()
}
