//
//  homeMatch.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/09.
//

import SwiftUI

struct homeMatch: View {
    var match_Name:String
    var match_date:String
    var Team_1 : String
    var Team_2 : String
    var Team_1_name : String
    var Team_2_name : String
    var body: some View {
          
            
            ZStack{
                VStack{
                    Text(match_Name)
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                    Text(match_date)
                        .font(.system(size: 12))
                        .padding(.bottom,8)
                        .foregroundColor(.white)
                    HStack{
                        Image(Team_1)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 36)
                           // .innerShadow(color: Color.black.opacity(0.5), radius: 2, x: 0, y: 0)
                          //  .padding(.leading,44)
                        Spacer()
                        Image(Team_2)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 36)
                           // .innerShadow(color: Color.black.opacity(0.5), radius: 2, x: 0, y: 0)
                            //.padding(.trailing,44)
                    }
                    .padding(.bottom,20)
                    
                    HStack{
                        homePolygon(teamColor: Color("#AA8B30"))
                            .frame(height:21)
                            .overlay(
                            Text( Team_1_name)
                                .padding(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing:44))
                            )
                        homePolygon(teamColor: Color("#E91B3B"))
                            .frame(height:21)
                            .scaleEffect(x: -1, y: 1)
                            .overlay(
                            Text(Team_2_name)
                                .padding(EdgeInsets(top: 4, leading:44, bottom: 4, trailing:0))
                            )
                    }
                    
                    Rectangle()
                        .foregroundColor(Color(red: 0.93, green: 0.93, blue: 0.93))
                        .frame(height:21)
                    
                    Spacer()
                }
            }.frame(height:150)
        }
    }




#Preview {
    homeMatch(match_Name: "2024 LCK Summer 1st Match", match_date: "2024.07.12 17:00", Team_1: "Gen", Team_2: "T1",Team_1_name: "Gen.G",Team_2_name: "T1")
}
