//
//  MyPost&MyCommentUI.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/06.
//

import SwiftUI

struct MyPost_MyCommentUI: View {
    @State private var selectedBoard: Int? = 1
    
    var body: some View {
        ZStack {
            
            Image("bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Topbar_single(Title: "My Post & My Comment")
                    .frame(height: 50)
                    .frame(maxWidth: 380)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.bottom,40)
                
                VStack {
                    HStack {
                        Button(action: {
                            selectedBoard = 1
                        }) {
                            Text("My Post")
                                .font(Font.custom("Cafe24 Ohsquare", size: 16))
                                .foregroundColor(selectedBoard == 1 ? .white : .gray)
                        }
                        .disabled(selectedBoard == 1) // 이미 선택된 경우 비활성화
                        
                        Spacer()
                        
                        Button(action: {
                            selectedBoard = 2
                        }) {
                            Text("My Comment")
                                .font(Font.custom("Cafe24 Ohsquare", size: 16))
                                .foregroundColor(selectedBoard == 2 ? .white : .gray)
                        }
                        .disabled(selectedBoard == 2) // 이미 선택된 경우 비활성화
                    }
                    .padding(.bottom,40)
                    .frame(width: 260)
                    
                    
                    ScrollView{
                        logoCell_1(Title: "title")
                    }
                    .padding(.horizontal,40)
                    
                    
                    
                    if selectedBoard == 1 {
                        Text("게시판: My Post")
                    } else if selectedBoard == 2 {
                        Text("게시판: My Comment")
                    }
                    
                }
               
            }
        }
    }
}

#Preview {
    MyPost_MyCommentUI()
}
