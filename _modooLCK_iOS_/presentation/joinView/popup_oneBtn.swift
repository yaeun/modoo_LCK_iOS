//
//  popup_oneBtn.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/27.
//

import SwiftUI

struct popup_oneBtn: View {
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 280,height: 513)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                .cornerRadius(12)
                .overlay(
                    VStack{
                        Text("Title")
                            .foregroundColor(.gray)
                            .bold()
                            .padding(.top,54)
                            .padding(.bottom,36)
                            .font(.system(size: 14, weight: .medium))
                        
                        ScrollView{
                            Text("여기에 긴 텍스트가 들어갑니다. 이 텍스트는 스크롤을 통해 볼 수 있습니다. 여기에 긴 내용을 추가하여 스크롤 기능을 테스트합니다." +
                                 " 추가적인 내용이 계속 이어집니다. 이 텍스트는 스크롤을 통해 볼 수 있는 영역에 위치하고 있습니다." +
                                 " 계속해서 내용을 추가하여 길이를 늘려 보세요." +
                                 " 이 텍스트는 스크롤을 통해 볼 수 있습니다." +
                                 " 추가적인 내용이 계속 이어집니다." +
                                 " 이 텍스트는 스크롤을 통해 볼 수 있는 영역에 위치하고 있습니다.")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .medium))
                            .frame(width: 230, height: 336)
                        }
                        Spacer()
                    }
                    
                )
        }
    }
}

#Preview {
    popup_oneBtn()
}
