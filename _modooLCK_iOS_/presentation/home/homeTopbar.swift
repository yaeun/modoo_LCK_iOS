//
//  homeTopbar.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/09.
//

import SwiftUI

struct homeTopbar: View {
        var body: some View {
            HStack{
                Button(action: {
                    print("homeBtn")
                }){
                    Image("home_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 27)
                    
                }
                .padding(.leading,24)
                
                Spacer()
                Button(action: {
                    print("myPageBtn")
                }){
                    Image("myPage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 27)
                }
                .padding(.trailing,24)
                
            }//Hstack
            .frame(height: 60)
            .background(Color.clear)
            //.offset(x:0, y:-350)
        }
        
    }


    #Preview {
        homeTopbar()
    }

