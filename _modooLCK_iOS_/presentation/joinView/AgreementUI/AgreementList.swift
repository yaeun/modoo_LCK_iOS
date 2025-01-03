//
//  AgreementList.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/02.
//

import SwiftUI

// 이용약관 동의 뷰
struct AgreementList: View {
    @Binding var isAlertPresented_1: Bool
    @Binding var isAlertPresented_2: Bool
    @ObservedObject var permitVM = PermitViewModel()
    var body: some View {
        ZStack{
            VStack(spacing: 0) {
                //모두 동의
                HStack {
                    Text("모두 동의")
                        .font(.system(size: 16, weight: .medium))
                    Spacer()
                    Toggle("", isOn: $permitVM.allPermit)
                        .toggleStyle(CheckboxToggleStyle())
                        .foregroundColor(.white)
                    
                }
                .padding(.bottom, 36)
                
                //개인정보처리방침
                VStack(alignment:.leading){
                    HStack {
                        Text("개인정보 처리방침에 동의 ( 필수 )")
                            .font(.system(size: 14, weight: .medium))
                        Spacer()
                        Toggle("", isOn: $permitVM.fourteenPermit)
                            .toggleStyle(CheckboxToggleStyle())
                            .foregroundColor(.white)
                    }
                    .padding(.bottom,4)
                    Button {
                        isAlertPresented_1.toggle()
                    } label: {
                        Text("세부 정보 보기 >")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.gray)
                    }
                }
                .padding(.bottom, 36)
                
                VStack(alignment:.leading){
                    
                    HStack {
                        Text("서비스 이용약관에 동의 ( 필수 )")
                            .font(.system(size: 14, weight: .medium))
                        Spacer()
                        Toggle("", isOn: $permitVM.termsOfServicePermit)
                            .toggleStyle(CheckboxToggleStyle())
                            .foregroundColor(.white)
                    }
                    .padding(.bottom,4)
                    Button {
                        isAlertPresented_2.toggle()
                    } label: {
                        Text("세부 정보 보기 >")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.gray)
                    }
                    
                    
                }
            }
            
            
        }
    }
}

#Preview {
    joinAgreement()
}
