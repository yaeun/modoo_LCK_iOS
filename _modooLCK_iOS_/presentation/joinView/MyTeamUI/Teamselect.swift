//
//  Teamselect.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/09.
//

import SwiftUI

struct Teamselect: View {
    let columns = [
        GridItem(.flexible(), spacing: -100),
        GridItem(.flexible(), spacing: -100),
        GridItem(.flexible(), spacing: -100)
    ]
    
    @State private var selectedTeam: String? = nil
    let teamLogos: [String] = [
        "한화", "Gen", "T1", "광동", "BNK", "RED",
        "DRX", "BRI", "KN", "KT"
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(teamLogos, id: \.self) { logo in
                    Teamselect_Cell(Team_logo: logo, isSelected: logo == selectedTeam)
                        .onTapGesture {
                            // 선택된 항목 변경
                            selectedTeam = logo
                        }
                }
            }
            .padding()
        }
    }
}

struct Teamselect_Cell: View {
    var Team_logo: String
    var isSelected: Bool
    
    var body: some View {
        Rectangle()
            .frame(width: 72, height: 72)
            .foregroundColor(isSelected ? Color.white.opacity(0.2) : Color.clear)
            .cornerRadius(4)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(.white, lineWidth: 1)
                    .overlay(
                        Image(Team_logo)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32)
                    )
            )
    }
}

#Preview {
    Teamselect()
}
