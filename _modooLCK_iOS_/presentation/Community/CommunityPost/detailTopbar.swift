//
//  detailTopbar.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/06.
//

import SwiftUI

struct detailTopbar: View {
    var body: some View {
        HStack(alignment: .center) {
            Button(action: {
            }) {
                Image("XButton")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .scaleEffect(x: -1, y: 1)
            }
            
            Spacer()
            
            VStack(alignment: .center, spacing: 8) {
    
                Text("글 작성하기")
                    .font(.Cafe24_20)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                    
             
              
            }
            .padding(0)
            .frame(width: 100, alignment: .center)
            
            Spacer()
          
            Button(action: {
            }) {
                Rectangle()
                    .foregroundColor(.clear)
                    .overlay(
                    RoundedRectangle(cornerRadius: 12)
                    .stroke(.white, lineWidth: 0.4)
                    )
                    .overlay(
                Text("등록")
                    .font(.Cafe24Air_12)
                    .foregroundColor(.white)

                )
                    .frame(width:40,height: 24)
            }

          
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 4)
        .frame(width: 360, height: 56, alignment: .center)
        
    }
}

#Preview {
    detailTopbar()
}
