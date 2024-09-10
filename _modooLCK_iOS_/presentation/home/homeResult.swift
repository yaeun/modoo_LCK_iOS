//
//  homeResult.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/09.
//

import SwiftUI

struct homeResult: View {
        var body: some View {
            HStack{
                
                VStack(alignment: .leading){
                    Text("LCK\nMatches\nResult")
                        .kerning(0.12)
                        .foregroundColor(.white)
                        .bold()
                        .padding(.bottom,16)
                    
                    Button(action: {
                        print("ResultBtn")
                    }){
                        Image("arrow_right")
                    }
                    
                }//Vstack
                .padding(.trailing,18)
                
                ScrollView(.horizontal, showsIndicators: false)  {
                    HStack {
                        ForEach(0..<20) { i in
                            homeResultCell(Team: "KT", Team_1_name: "Kt Rolster", Team_2_name: "Dplus KIA", Match_date: "2024.05.11 17:00")
                        }
                    }
                }
                .frame(height:70)
                
            }
        }
    }

    #Preview {
        homeResult()
    }
