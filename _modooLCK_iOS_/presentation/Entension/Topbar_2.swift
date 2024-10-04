//
//  Topbar_2.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/09.
//

import SwiftUI

struct Topbar_2: View {
    var Title: String
    var SubTitle: String
   @Binding var isArrowButtonEnabled: Bool // 화살표 버튼의 활성화 상태를 나타내는 매개변수

    var body: some View {
        HStack(alignment: .center) {
            
            Rectangle()
                .frame(width: 45, height: 45)
                .foregroundColor(.clear)

            Spacer()
            
            VStack(alignment: .center, spacing: 8) {
                Text(Title)
                    .font(Font.custom("Cafe24 Ohsquare", size: 20))
                    .kerning(0.2)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
             
                Text(SubTitle)
                    .font(
                        Font.custom("Cafe24 Ohsquare air", size: 12)
                            .weight(.light)
                    )
                    .kerning(0.12)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(0)
            .frame(width: 82, alignment: .center)
            
            Spacer()
            
            // 화살표 버튼
            Button(action: {
                // 버튼 클릭 시 실행할 동작
            }) {
                Image("Topbar_Right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
            }
            .disabled(!isArrowButtonEnabled) // 활성화 여부에 따라 버튼 비활성화
            .opacity(isArrowButtonEnabled ? 1 : 0.5) // 비활성화 시 투명도 조절
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 4)
        .frame(width: 360, height: 56, alignment: .center)
    }
}

#Preview {
    Topbar_2(Title: "Title", SubTitle: "SubTitle", isArrowButtonEnabled: .constant(true))
}
