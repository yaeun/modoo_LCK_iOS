//
//  AgreementList.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/02.
//

import SwiftUI

// 이용약관 동의 뷰
struct AgreementList: View {
    @ObservedObject var permitVM = PermitViewModel() // @ObservedObject를 올바른 위치에 선언

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Toggle("전체 동의하기", isOn: $permitVM.allPermit)
                    .toggleStyle(CheckboxToggleStyle())
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold))

                Spacer()
            }
            .padding(.bottom, 14)

            HStack {
                Toggle("만 14세 이상입니다", isOn: $permitVM.fourteenPermit)
                    .toggleStyle(CheckboxToggleStyle())
                    .foregroundColor(.white)

                Spacer()
            }
            .padding(.bottom, 8)

            HStack {
                Toggle("서비스 이용 약관 동의", isOn: $permitVM.termsOfServicePermit)
                    .toggleStyle(CheckboxToggleStyle())
                    .foregroundColor(.white)

                Button {
                    //nicknameViewModel.send(action: .moveToWebView(where: "termsOfService"))
                } label: {
                    Text("보기")
                        .underline()
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(.red)
                }

                Spacer()
            }
            .padding(.bottom, 8)

            HStack {
                Toggle("개인정보 처리방침 동의", isOn: $permitVM.informationPermit)
                    .toggleStyle(CheckboxToggleStyle())
                    .foregroundColor(.white)

                Button {
                    //nicknameViewModel.send(action: .moveToWebView(where: "privateInfo"))
                } label: {
                    Text("보기")
                        .underline()
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(.red)
                }

                Spacer()
            }
        }
    }
}

#Preview {
    AgreementList() // AgreementList 뷰를 미리보기로 설정
}
