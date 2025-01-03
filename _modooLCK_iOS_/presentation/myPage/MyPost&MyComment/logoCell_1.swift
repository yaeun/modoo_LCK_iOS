//
//  logoCell_1.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/06.
// cropLogo
//  logoCell_roundText(Text_1:"# 응원게시판")

import SwiftUI

struct logoCell_1: View {
    var Title: String
    var body: some View {
        
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 280, height: 80)
                .background(.white)
                .cornerRadius(12)
                .overlay(
                    ZStack{
                        HStack{
                            Spacer()
                            VStack{
                                Spacer()
                                Image("cropLogo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 110)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text(Title)
                                    .font(.system(size: 14, weight: .medium))
                                    .foregroundColor(.black)
                                    .padding(.bottom,-2)
                                HStack{
                                    logoCell_roundText(Text_1:"# 응원게시판")
                                    Button(action: {
                                        
                                    }){
                                        logoCell_roundText(Text_1:"해당 게시글로 바로가기 > ")
                                    }
                                }
                            }
                            .padding(.leading,12)
                            
                            Spacer()
                        }
                    }
                   
                )
    }
}

#Preview {
    logoCell_1(Title:"제목자래")
}
