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
    @State private var showingAlert: Bool = false
    
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

                VStack {
                    // 모두 동의
                    HStack {
                        Text("모두 동의")
                        Spacer()
                        radioBtn(isChecked: $isCheckedAll)
                            .onTapGesture {
                                isCheckedAll.toggle()
                                isCheckedService.toggle()
                                isCheckedPrivacy.toggle()
                            }
                    }
                    .padding(.bottom, 36)

                    // 서비스 이용약관
                    VStack {
                        HStack {
                            Text("서비스 이용약관에 동의 ( 필수 )")
                            Spacer()
                            radioBtn(isChecked: $isCheckedService)
                                .onTapGesture {
                                    isCheckedService.toggle()
                                    // "모두 동의"를 해제하면 개별 체크박스 체크 해제
                                    if isCheckedService == false {
                                        isCheckedAll = false
                                    }
                                }
                        }
                        HStack {
                            Button(action: {
                                showingAlert.toggle()
                            }) {
                                Text("세부 정보 보기 >")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        }
                    }
                    .padding(.bottom, 36)

                    // 개인정보 처리방침
                    VStack {
                        HStack {
                            Text("개인정보 처리방침에 동의 ( 필수 )")
                            Spacer()
                            radioBtn(isChecked: $isCheckedPrivacy)
                                .onTapGesture {
                                    isCheckedPrivacy.toggle()
                                    // "모두 동의"를 해제하면 개별 체크박스 체크 해제
                                    if isCheckedPrivacy == false {
                                        isCheckedAll = false
                                    }
                                }
                        }
                        HStack {
                            Button(action: {
                                showingAlert.toggle()
                            }) {
                                Text("세부 정보 보기 >")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        }
                    }
                }
                .padding(.horizontal, 60)
                .padding(.vertical, 82)
                Spacer()
            }
        }
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("세부 정보"),
                message: Text("여기에 서비스 이용약관의 세부 정보가 표시됩니다."),
                dismissButton: .default(Text("확인"))
            )
        }
    }
}

#Preview {
    joinAgreement()
}
