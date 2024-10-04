//
//  joinNickname.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/27.
//


// joinNickname.swift
import SwiftUI

struct joinNickname: View {
    @Binding var nickname: String
    @State private var validator = NicknameValidator()
    @State private var Checkednickname: Bool = false
    var body: some View {
        ZStack {
            // 배경 이미지
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // 상단바
                Topbar_2(Title: "Title", SubTitle: "SubTitle", isArrowButtonEnabled: .constant(true))
                    .frame(height: 100)
                    .frame(maxWidth: .infinity)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                TextField("닉네임을 입력해주세요.", text: $nickname, onCommit: {
                    validator.validate(nickname: nickname) // 유효성 검사
                  
                    if !validator.validationMessages.isEmpty {
                        print(validator.validationMessages.joined(separator: "\n"))
                    }
                })
                .foregroundColor(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .frame(width: 260, height: 36, alignment: .leading)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.white, lineWidth: 1)
                        .shadow(color: .white, radius: 4, x: 0, y: 0)
                )
                .padding(.vertical,100)
                
                Button(action: {
                    Checkednickname.toggle()
                }) {
                    Text("중복 확인")
                        .font(
                        Font.custom("Cafe24 Ohsquare air", size: 12)
                        .weight(.light)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Checkednickname ? Color.white : Color("#8C8C8C"))
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .overlay(
                        RoundedRectangle(cornerRadius: 12)
                        .inset(by: 0.2)
                        .stroke(Color("#8C8C8C"))
                        )
                    
                }
                Spacer()
            }
        }
        
    }
}

#Preview {
    joinNickname(nickname: .constant(""))
}
