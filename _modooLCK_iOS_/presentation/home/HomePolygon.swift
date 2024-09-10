//
//  homePolygon.swift
//  modoo_LCK_iOS
//
//  Created by 나예은 on 2024/09/09.
//

import SwiftUI

struct homePolygon: View {
    var teamColor: Color
    var body: some View {
        VStack {
            ZStack {
                Parallelogram(width: 173, height: 21, offset: 12)
                    .fill(teamColor)
                    .shadow(color: teamColor, radius: 2, x: 4, y: 0)
            }
        }
    }
}

struct Parallelogram: Shape {
    var width: CGFloat
    var height: CGFloat
    var offset: CGFloat

    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let topLeft = CGPoint(x: rect.minX, y: rect.minY)
        let topRight = CGPoint(x: rect.minX + width, y: rect.minY)
        let bottomLeft = CGPoint(x: rect.minX, y: rect.minY + height)
        let bottomRight = CGPoint(x: rect.minX + width + offset, y: rect.minY + height )
        
        path.move(to: topLeft)
        path.addLine(to: topRight)
        path.addLine(to: bottomRight)
        path.addLine(to: bottomLeft)
        path.closeSubpath()
        
        return path
    }
}



#Preview {
    homePolygon(teamColor: Color("#AA8B30"))
}

