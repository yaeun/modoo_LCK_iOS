//
//  postMenu.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/06.
//

import SwiftUI

struct postMenu: View {
    @State var text: String = ""
    @State var selectedOption: String = "잡담"
    @State var title: String = ""
    let options = ["잡담", "응원", "질문", "FA","후기","거래"]
    var body: some View {
        VStack{
            
            //게시판 선택
            HStack{
                Circle()
                    .frame(width:4,height: 4)
                    .foregroundColor(Color("#F26E6E"))
                    .padding(.bottom,16)
                
                Text("게시판 선택")
                    .font(.Cafe24_12)
                    .foregroundColor(.black)
                Spacer()
         
                    Menu {
                        ForEach(options, id: \.self) { option in
                            Button(action: {
                                selectedOption = option
                            }) {
                                Text(option)
                            }
                        }
                    } label: {
                        Label("\(selectedOption)", systemImage: "chevron.down")
                            .font(.Cafe24Air_12)
                            .background(.clear)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                    }
                    .frame(height:10)
                   
            }
            .padding(.top,40)
            .padding(.bottom,12)
            
            Divider()
                .frame(width:300)
            
            //제목
            HStack{
                Circle()
                    .frame(width:4,height: 4)
                    .foregroundColor(Color("#F26E6E"))
                    .padding(.bottom,16)
                
                Text("제목")
                    .font(.Cafe24_12)
                    .foregroundColor(.black)
                Spacer()
                VStack {
                    TextField("제목을 입력하세요.", text: $title) // TextField 설정
                        .background(.clear)
                        .font(.Cafe24Air_12)
                        .foregroundColor(.black)
                        .padding()
                        .multilineTextAlignment(.trailing)
                        .frame(alignment: .trailing)
                    
                    
                }
                .padding(0)
            }
            
            Divider()
                .frame(width:300)
            
            //내용
            VStack(alignment:.leading) {
                HStack{
                    Circle()
                        .frame(width:4,height: 4)
                        .foregroundColor(Color("#F26E6E"))
                        .padding(.bottom,16)
                    
                    Text("내용")
                        .font(.Cafe24_12)
                        .foregroundColor(.black)
                    
                }
                ZStack(alignment: .topLeading) {
                    
                    TextEditor(text: $text)
                               .overlay(alignment: .topLeading) {
                                   Text("내용을 입력하세요.")
                                       .font(.Cafe24_12)
                                       .foregroundStyle(text.isEmpty ? .black : .clear)
                               }
                           .frame(width: 300, height: 200)
                           .scrollContentBackground(.hidden)
                           .padding(.leading,20)

                    
                }
                    
                }
            .padding(.leading,40)
            .padding(.top,10)
            
            Divider()
                .frame(width:300)
            
            HStack{
                
                Text("사진 및 영상 업로드")
                    .font(.Cafe24_12)
                    .foregroundColor(.black)
                Spacer()
         
                
            }
            .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 0))
            
            Divider()
                .frame(width:300)
            
            Text("""
                 사진 및 영상은 최대 12개까지 업로드 가능합니다.
                 
                 과도한 비방 및 욕성이 포함된 게시물은 신고에 의해 무통보 삭제될 수 있습니다.
                 
                 초상권,저작권 침해 및 기타 위법한 게시물은 관리자에 의해 무통보 삭제될 수 있습니다.
                 """)
            .font(.Cafe24_8)
            .kerning(0.2)
            .frame(width: 300)
            .padding(EdgeInsets(top: 12, leading: 0, bottom: 12, trailing: 0))
            
            Spacer()
            
        }
        .frame(width:280)
    }
}

#Preview {
    CommunityPostUI()
}
