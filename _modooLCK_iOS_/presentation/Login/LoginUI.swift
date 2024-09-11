//
//  LoginUI.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/09.
//

import SwiftUI

struct LoginUI: View {
    
    @StateObject var kakaoAuthVM : KakaoAuthVM = KakaoAuthVM()
    
    var body: some View {
            ZStack {
              
                Image("bg")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    Image("full_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 274)
                        .offset(y:10)
                        .padding(.bottom,120)
                    
                   Button (action: {
                        print("kakaoBtn")
                       kakaoAuthVM.handleKakaoLogin()
                    }){
                        Image("kakao")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 183)
                    }
                }
            }
    }
}

#Preview {
    LoginUI()
}
