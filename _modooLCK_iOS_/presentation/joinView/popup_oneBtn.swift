//
//  popup_oneBtn.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/27.
//

import SwiftUI

struct PopupOneBtn: View {
    @Environment(\.presentationMode) var presentationMode
    @State var title : String
    @State var content : String
    @Binding var isAlertPresented_Agree1: Bool
    var body: some View {
        ZStack {
            Color.black.opacity(0.8) 
                .edgesIgnoringSafeArea(.all)
            ZStack {
                Rectangle()
                    .frame(width: 280, height: 513)
                    .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .overlay(popupContent)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
        }
    }
    // 팝업 내용
    private var popupContent: some View {
        VStack {
            Text(title)
                .foregroundColor(.gray)
                .bold()
                .padding(.top, 54)
                .padding(.bottom, 24)
                .font(.system(size: 14, weight: .medium))
            
            
            ScrollView {
                Text(content)
                    .foregroundColor(.gray)
                    .lineLimit(nil)
                    .font(.system(size: 10))
            }
            .padding(.horizontal,25)
            
            Spacer()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                isAlertPresented_Agree1 = false
            }) {
                Rectangle()
                    .frame(width: 300, height: 40)
                    .foregroundColor(Color("#E3E4F2"))
                    .overlay(
                        Text("확인")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .medium))
                    )
                
            }
            
        }
        
    }
}



