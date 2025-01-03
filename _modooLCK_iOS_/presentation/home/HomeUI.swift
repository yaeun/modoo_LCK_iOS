//
//  HomeUI.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/09.
//

import SwiftUI

struct HomeUI: View {
    var body: some View {
        ZStack {
            // 배경 이미지
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                homeTopbar() //상단바
                        .frame(height: 28)
                        .frame(maxWidth: .infinity)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    
                Text("Today's Matches")
                    .padding(.top, 12)
                    .padding(.bottom, 20)
                    .foregroundStyle(Color(.white))
                    .bold()
                
                ZStack {
                    
                    homeMatch(match_Name: "2024 LCK Summer 1st Match", match_date: "2024.07.12 17:00", Team_1: "Gen", Team_2: "T1",Team_1_name: "Gen.G",Team_2_name: "T1")
                    
                    Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 360, height: 190)
                    .cornerRadius(8)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)

                    .overlay(
                    RoundedRectangle(cornerRadius: 8)
                    .inset(by: 0.5)
                    .stroke(.white, lineWidth: 1)

                    )
                        
                  
                }
                .padding(.bottom,24)
                
                homeResult()
                    .padding(.leading,40)
                    .padding(.bottom,44)
                
                HStack{
                    Button(action: {
                        print("Home_AboutLCKBtn")
                    }){
                        homeAboutLCK()
                            .padding(.trailing,12)
                    }
                    
                    VStack{
                        homeButtonEtc(Btn_name: "Community")
                            .padding(.bottom,8)
                        homeButtonEtc(Btn_name: "Viewing\nparty")
                        
                    }
                }
                .padding(.bottom,8)
                
                Spacer()
                
                //BottomBar()
            }
        }
    }
    
}



#Preview {
    HomeUI()
}


