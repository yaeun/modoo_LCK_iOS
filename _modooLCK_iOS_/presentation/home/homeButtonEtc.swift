//
//  homeButtonEtc.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/09.
//

import SwiftUI

struct homeButtonEtc: View {
    var Btn_name : String
    var body: some View {
        Rectangle()
        .foregroundColor(.clear)
        .frame(width: 129, height: 79)
        .cornerRadius(8)
        .overlay(
        RoundedRectangle(cornerRadius: 8)
        .inset(by: 0.5)
        .stroke(Color(red: 0.46, green: 0.45, blue: 0.45), lineWidth: 1)
        )
        .overlay(
            VStack(alignment:.leading){
                Text(Btn_name)
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    .padding(.trailing,8)
                    .padding(.top,11)
               
               
                Spacer(minLength: 18)
                
                    Image("arrow_right")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 24)
                        .padding(.bottom,8)
                        .padding(.leading,80)
                
}
     )
            }
            }

#Preview {
    homeButtonEtc(Btn_name: "Community")
}

