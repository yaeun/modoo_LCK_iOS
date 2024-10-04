//
//  myPageMenu.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/12.
//

import SwiftUI

struct myPageMenu: View {
    var body: some View {
        List{
            
            Button(action: {
                
            }) {
                Text("MY Profile")
            }
            .listRowBackground(Color.clear)
            .padding(.vertical,8)
            
            Button(action: {
                
            }) {
                Text("MY Team")
            }
            .listRowBackground(Color.clear)
            .padding(.vertical,8)
            
            Button(action: {
                
            }) {
                Text("MY Post & Comment")
            }
            .listRowBackground(Color.clear)
            .padding(.vertical,8)
            
            Button(action: {
                
            }) {
                Text("MY Viewing Party")
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
    MyPageUI()
}
