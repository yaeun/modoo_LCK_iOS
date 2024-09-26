//
//  Topbar_1.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/10.
//

import SwiftUI

struct Topbar_1: View {
    var Title: String
    var body: some View {
         
            
            VStack(alignment: .center, spacing: 8) {
    
                Text(Title)
                    .font(Font.custom("Cafe24 Ohsquare", size: 20))
                    .kerning(0.2)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(alignment: .center)
             
             
            }
            .padding(0)
           
            

    }
}

#Preview {
    Topbar_1(Title: "Title")
}
