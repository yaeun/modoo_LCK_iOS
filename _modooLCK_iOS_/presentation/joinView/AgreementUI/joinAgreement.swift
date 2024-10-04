//
//  joinAgreement.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/27.
//

import SwiftUI

struct joinAgreement: View {

    @State private var isCheckedService: Bool = false //서비스 이용약관
    @State private var isCheckedPrivacy: Bool = false //개인정보 처리방침
    @State private var isAlertPresented_Agree1: Bool = false // 팝업 상태
    @State private var isAlertPresented_Agree2: Bool = false // 팝업 상태
    @State private var isConfirmed_Agree1: Bool = false // 확인 버튼 눌림 상태
    @State private var isConfirmed_Agree2: Bool = false // 확인 버튼 눌림 상태
    @ObservedObject var viewModel = PermitViewModel()
    
    var body: some View {
        ZStack {
            
            //배경
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack {

                HStack {
                    
                    Rectangle()
                        .frame(width: 45, height: 45)
                        .foregroundColor(.clear)

                    Spacer()
                    
                    VStack(alignment: .center, spacing: 8) {
                        Text("회원가입")
                            .font(Font.custom("Cafe24 Ohsquare", size: 20))
                     
                        Text("이용 약관")
                            .font(
                                Font.custom("Cafe24 Ohsquare air", size: 12)
                                    .weight(.light)
                            )
                    }
                    .frame(width: 82, alignment: .center)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                    Spacer()
                    
                    // 화살표 버튼
                    Button(action: {
                        
                    }) {
                        Image("Topbar_Right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                    }
                    .disabled(!viewModel.allSelected) // 활성화 여부에 따라 버튼 비활성화
                    .opacity(viewModel.allSelected ? 1 : 0.4) // 비활성화 시 투명도 조절
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 4)
                .frame(width: 360, height: 56, alignment: .center)
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
