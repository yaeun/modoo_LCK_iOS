//
//  joinPhoto.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/27.
//

import SwiftUI

struct joinPhoto: View {
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
                
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 96, height: 96)
                .overlay(
                RoundedRectangle(cornerRadius: 4)
                .inset(by: 0.5)
                .stroke(.white, lineWidth: 1)
                .overlay(
                Image("plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28)
                )
                )
                .padding(.vertical,106)
                
                Spacer()
            }
        }
    }
}

#Preview {
    joinPhoto()
}
