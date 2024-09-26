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
                    .font(
                        Font.custom("Cafe24 Ohsquare air OTF", size: 16)
                            .weight(.light)
                    )
                    .foregroundColor(.white)
            }
            
            .listRowBackground(Color.clear)
        }
        .listStyle(PlainListStyle())
        .tint(.gray)
    }
}


struct menu {
    
}

#Preview {
    MyPageUI()
}
