//
//  logoCell_2.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/06.
//

import SwiftUI

struct logoCell_2: View {
    var Title: String
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 279, height: 111)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .inset(by: 0.4)
                        .stroke(.white, lineWidth: 0.8)
                )
                .overlay(
                    VStack{
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
                                                logoCell_roundText(Text_1:"2024.05.14")
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
                        
                        VStack {
                            HStack {
                                Button(action: {
                                    
                                }) {
                                    Text("Guest")
                                        .font(Font.custom("Cafe24 Ohsquare", size: 12))
                                        .foregroundColor(.white)
                                }
                                
                                
                                Spacer()
                                
                                Button(action: {
                                    
                                }) {
                                    Text("Host")
                                        .font(Font.custom("Cafe24 Ohsquare", size: 12))
                                        .foregroundColor(.white)
                                }
                            }
                            }
                        .padding(.top,2)
                            .frame(width: 160)
                            
                        
                        Spacer()
                    }
            )
        }
    }
}

#Preview {
    logoCell_2(Title: "250514 홍대 뷰파")
}
