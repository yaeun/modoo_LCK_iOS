//
//  joinAgreement.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/27.
//

import SwiftUI

struct joinAgreement: View {
    @State private var isCheckedAll: Bool = false
    @State private var isCheckedService: Bool = false
    @State private var isCheckedPrivacy: Bool = false
    @Binding var isAlertPresented_Agree1: Bool
    @State private var isAlertPresented_1 = false
    @ObservedObject var permitVM = PermitViewModel()
    var body: some View {
        ZStack {
            // 배경 이미지
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack {
                // 상단바
                Topbar_2(Title: "회원가입", SubTitle: "사용 약관")
                    .frame(height: 100)
                    .frame(maxWidth: .infinity)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.bottom,82)

                AgreementList(isAlertPresented_1:  $isAlertPresented_1)
                    .padding(.horizontal,60)
                
                
                Spacer()
                        }//VStack
            if isAlertPresented_1 {
                PopupOneBtn(title: "개인정보 처리방침 ( 필수 )", content: Privacy_Text.Privacy_Text_long, isAlertPresented_Agree1: $isAlertPresented_Agree1))
                       }
                    }//ZStack
       
                }
            }
        

           

#Preview {
    @Binding var isAlertPresented_Agree1: Bool
    joinAgreement(isAlertPresented_Agree1: $isAlertPresented_Agree1)
}
