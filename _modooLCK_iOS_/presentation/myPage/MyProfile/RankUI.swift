//
//  RankUI.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/10/05.
//

import SwiftUI

struct RankUI: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 264.5, height: 2)
                .foregroundColor(.white.opacity(0.4))
            
            HStack(spacing:12){
                VStack{
                    Text("Bronze")
                    Circle()
                        .frame(width: 4,height: 4)
                        
                }
                
                VStack{
                    Text("Silver")
                    Circle()
                        .frame(width: 4,height: 4)
                        
                }
               
                VStack{
                    Text("Gold")
                    Circle()
                        .frame(width: 4,height: 4)
                        
                }
                
                VStack{
                    Text("Master")
                    Circle()
                        .frame(width: 4,height: 4)
                        
                }
                
                VStack{
                    Text("Challenger")
                    Circle()
                        .frame(width: 4,height: 4)
                        
                }
                
            }
            .padding(.bottom,20)
            .foregroundColor(.white.opacity(0.4))
            .font(Font.custom("Cafe24 Ohsquare", size: 12))
        }
    }

}

#Preview {
    RankUI()
}
