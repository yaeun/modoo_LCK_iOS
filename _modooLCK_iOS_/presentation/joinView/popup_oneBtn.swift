//
//  popup_oneBtn.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/27.
//

import SwiftUI

struct PopupOneBtn: View {
    @State var title: String
    @State var content: String
    @Binding var isAlertPresented_Agree1: Bool // 팝업 표시 상태
    @Binding var isConfirmed: Bool // 확인 버튼이 눌렸는지 여부

    var body: some View {
        ZStack {
            Color.black.opacity(0.8)
                .edgesIgnoringSafeArea(.all)

            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .frame(width: 280, height: 513)
                    .overlay(popupContent)
            }
        }
    }

    // 팝업 내용
    private var popupContent: some View {
        VStack {
            Text(title)
                .foregroundColor(.gray)
                .bold()
                .padding(.top, 54)
                .padding(.bottom, 24)
                .font(.system(size: 14, weight: .medium))
            
            ScrollView {
                Text(content)
                    .foregroundColor(.gray)
                    .lineLimit(nil)
                    .font(.system(size: 10))
            }
            .padding(.horizontal, 25)

            Spacer()

            // 확인 버튼
            Button(action: {
                isAlertPresented_Agree1 = false // 팝업을 닫음
                isConfirmed = true // 확인 버튼이 눌렸음을 표시
            }) {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 280, height: 40)
                    .foregroundColor(Color(red: 0.89, green: 0.89, blue: 0.95))
                    .overlay(
                        Text("확인")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .medium))
                    )
            }
        }
    }
}
