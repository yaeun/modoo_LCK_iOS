//
//  homeResultCell.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/09.
//

import SwiftUI

struct homeResultCell: View {
    var Team : String
    var Team_1_name : String
    var Team_2_name : String
    var Match_date : String
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 141, height: 70)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.46, green: 0.45, blue: 0.45), lineWidth: 1)
                )
                .overlay(
                    ZStack{
                        HStack{
                            Image(Team)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 48, height: 46)
                                .blur(radius: 3.0)
                                .padding(.leading,10)
                        
                            Spacer()
                                
                        }
                        
                        VStack(alignment:.trailing){
                            Spacer()
                            HStack{
                                Spacer()
                                Text(Team_1_name)
                                    .fontWeight(.heavy)
                                    .padding(.trailing,-6)
                                Text("vs")
                                    .padding(.trailing,-6)
                                Text(Team_2_name)
                            }
                            .foregroundColor(.white)
                            .font(.system(size: 8))
                           
                            
                            Text(Match_date)
                                .foregroundColor(.white)
                                .font(.system(size: 6))
                        }
                        .padding(.trailing,12)
                        .padding(.bottom,12)
                        
                    }
             )
        }
        .padding(.trailing,16)
    }
}

#Preview {
    homeResultCell(Team: "KT", Team_1_name: "Kt Rolster", Team_2_name: "Dplus KIA", Match_date: "2024.05.11 17:00")
}

