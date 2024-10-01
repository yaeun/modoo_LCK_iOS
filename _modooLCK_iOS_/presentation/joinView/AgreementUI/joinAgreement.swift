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
                    .padding(.bottom,82)

                AgreementList()
                    .padding(.horizontal,60)
                
                Spacer()
                        }//VStack
            
                    }//ZStack
        
                }
            }
        

           

#Preview {
    joinAgreement()
}
