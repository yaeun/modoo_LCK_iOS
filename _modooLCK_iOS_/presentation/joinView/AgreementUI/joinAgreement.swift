//
//  joinAgreement.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/27.
//

import SwiftUI

struct joinAgreement: View {
    @State private var isCheckedAll: Bool = false //전체동의
    @State private var isCheckedService: Bool = false //서비스 이용약관
    @State private var isCheckedPrivacy: Bool = false //개인정보 처리방침
    @State private var isAlertPresented_Agree1: Bool = false // 팝업 상태
    @State private var isAlertPresented_Agree2: Bool = false // 팝업 상태
    @State private var isConfirmed_Agree1: Bool = false // 확인 버튼 눌림 상태
    @State private var isConfirmed_Agree2: Bool = false // 확인 버튼 눌림 상태

    var body: some View {
        ZStack {
            
            //배경
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack {
                
                //상단바
                Topbar_2(Title: "회원가입", SubTitle: "사용 약관")
                    .frame(height: 100)
                    .frame(maxWidth: .infinity)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.bottom, 82)

                //리스트처리
                AgreementList(isAlertPresented_1: $isAlertPresented_Agree1, isAlertPresented_2: $isAlertPresented_Agree2)
                    .padding(.horizontal, 60)

                Spacer()
            }

            // 팝업을 표시할 때
            if isAlertPresented_Agree1 {
                PopupOneBtn(
                    title: "개인정보 처리방침 ( 필수 )",
                    content: Privacy_Text.Privacy_Text_long,
                    isAlertPresented_Agree1: $isAlertPresented_Agree1,
                    isConfirmed: $isConfirmed_Agree1
                )
            } else if isAlertPresented_Agree2 {
                PopupOneBtn(
                    title: "서비스 이용약관 ( 필수 )",
                    content: Service_Text.Service_Text_long,
                    isAlertPresented_Agree1: $isAlertPresented_Agree2,
                    isConfirmed: $isConfirmed_Agree2
                )
            }

        }
    }
}

#Preview {
    joinAgreement()
}
