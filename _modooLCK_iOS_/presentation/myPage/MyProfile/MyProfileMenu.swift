//
//  MyProfileMenu.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/05.
//

import SwiftUI

struct MyProfileMenu: View {
    var body: some View {
        List{
            
            Button(action: {
                
            }) {
                Text("프로필 수정")
            }
            .listRowBackground(Color.clear)
            .padding(.vertical,8)
            
            Button(action: {
                
            }) {
                Text("로그아웃")
            }
            .listRowBackground(Color.clear)
            .padding(.vertical,8)
            
            Button(action: {
                
            }) {
                Text("계정탍퇴")
            }
            .listRowBackground(Color.clear)
            .padding(.vertical,8)
            
         
        }
        .listStyle(PlainListStyle())
        .listRowBackground(Color.clear)
        .tint(.gray)
        .font(
            Font.custom("Cafe24 Ohsquare air OTF", size: 18)
                .weight(.light)
        )
        .foregroundColor(.white)
        .padding(.horizontal,20)
        
        
    }
}

#Preview {
    MyProfileMenu()
}
