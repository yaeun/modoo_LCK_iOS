//
//  CommunityCell.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/06.
//

import SwiftUI

struct CommunityCell: View {
    var body: some View {
        HStack{
            Rectangle()
                .frame(width:32,height: 32)
                .cornerRadius(4)
                .overlay(
                Image("")
                    .resizable()
                    .scaledToFit()
                )
                .padding(.trailing,12)
            VStack(alignment:.leading){
                   Text("1경기 전력 어떻게 볼 수 있어?")
                        .font(.Cafe24_12)
                    HStack{
                        Rectangle()
                            .frame(width:8,height: 8)
                            .cornerRadius(2)
                            .overlay(
                            Image("")
                                .resizable()
                                .scaledToFit()
                            )
                        
                        Text("nickname" + " " + "team")
                            .font(.Cafe24Air_8)
                            .padding(.leading,-4)
                        
                        Image("comment_gray")
                            .resizable()
                            .scaledToFit()
                            .frame(width:6)
                        
                        Text("38")
                            .font(.Cafe24Air_8)
                            .padding(.leading,-4)
                    }
                    .padding(.leading,2)
                }
            
            Spacer()
            
            Text("2024.03.08")
                .font(.Cafe24Air_6)
                
        }
        .frame(width: 285, height: 42)
    }
}

#Preview {
    CommunityUI()
}
