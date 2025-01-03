//
//  CommunityUI.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/06.
//

import SwiftUI

struct CommunityUI: View {
    @State private var Community_int: Int? = 1
    var body: some View {
        ZStack {
            // 배경 이미지
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Topbar_1(Title: "Community")
                    .frame(height: 20)
                    .frame(maxWidth: 380)
                    //.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.bottom,40)
               
                
                VStack {
                    HStack(spacing : 28) {
                        
                        //잡담
                        Button(action: {
                            Community_int = 1
                        }) {
                            Text("잡담")
                                .font(Font.custom("Cafe24 Ohsquare", size: 16))
                                .foregroundColor(Community_int == 1 ? .white : .gray)
                        }
                        .disabled(Community_int == 1) // 이미 선택된 경우 비활성화
                        
                        //응원
                        Button(action: {
                            Community_int = 2
                        }) {
                            Text("응원")
                                .font(Font.custom("Cafe24 Ohsquare", size: 16))
                                .foregroundColor(Community_int == 2 ? .white : .gray)
                        }
                        .disabled(Community_int == 2) // 이미 선택된 경우 비활성화
                        
                        //응원
                        Button(action: {
                            Community_int = 3
                        }) {
                            Text("질문")
                                .font(Font.custom("Cafe24 Ohsquare", size: 16))
                                .foregroundColor(Community_int == 3 ? .white : .gray)
                        }
                        .disabled(Community_int == 3) // 이미 선택된 경우 비활성화
                        
                        //응원
                        Button(action: {
                            Community_int = 4
                        }) {
                            Text("FA")
                                .font(Font.custom("Cafe24 Ohsquare", size: 16))
                                .foregroundColor(Community_int == 4 ? .white : .gray)
                        }
                        .disabled(Community_int == 4) // 이미 선택된 경우 비활성화
                        
                        //응원
                        Button(action: {
                            Community_int = 5
                        }) {
                            Text("후기")
                                .font(Font.custom("Cafe24 Ohsquare", size: 16))
                                .foregroundColor(Community_int == 5 ? .white : .gray)
                        }
                        .disabled(Community_int == 5) // 이미 선택된 경우 비활성화
                        
                        //응원
                        Button(action: {
                            Community_int = 6
                        }) {
                            Text("거래")
                                .font(Font.custom("Cafe24 Ohsquare", size: 16))
                                .foregroundColor(Community_int == 6 ? .white : .gray)
                        }
                        .disabled(Community_int == 6) // 이미 선택된 경우 비활성화
                        
                        
                    }
                    .padding(.bottom,30)
                    .frame(width: 300)
                    
                    
                        List{
                            CommunityCell()
                                .listRowBackground(Color.clear)
                            CommunityCell()
                                .listRowBackground(Color.clear)
                            CommunityCell()
                                .listRowBackground(Color.clear)
                            CommunityCell()
                                .listRowBackground(Color.clear)
                        }
                        .listStyle(PlainListStyle())
                        .tint(.gray)
                        .padding(.horizontal,20)
                        .frame(width: 400, height: 480)
                        
                    .padding(.horizontal,40)
                    
                    Spacer()
                }
                
            }
            
            Button(action: {
            
            }) {
                Circle()
                    .frame(width: 43, height: 43)
                    .foregroundColor(.white)
                    .overlay(
                    Image("write")
                        .resizable()
                        .scaledToFit()
                        .frame(width:16)
                    )
            }
            .padding(.leading,240)
            .padding(.top,350)
        }
    }
}

#Preview {
    CommunityUI()
}
