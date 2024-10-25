//
//  ActiveShape.swift
//  Example
//
//  Created by Daniil Sentsov on 25/10/2024.
//

import SwiftUI

struct ActiveShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            
            let startCurveX: CGFloat = 40 + 6
            let endXOffset: CGFloat = 25 + 6
            let endYOffset: CGFloat = 8
            let curveX: CGFloat = 28 + 6
            
            path.addLine(to: CGPoint(x: rect.size.width / 2 - startCurveX, y: 0))
            
            path.addCurve(to: CGPoint(x: rect.size.width / 2 - endXOffset, y: endYOffset),
                          control1: CGPoint(x: rect.size.width / 2 - startCurveX, y: 0),
                          control2: CGPoint(x: rect.size.width / 2 - curveX, y: 0))
            
            path.addArc(center: CGPoint(x: rect.size.width / 2, y: 0),
                        radius: 26 + 6,
                        startAngle: .degrees(160 - 15),
                        endAngle: .degrees(20 + 15),
                        clockwise: true)
            
            path.addCurve(to: CGPoint(x: rect.size.width / 2 + startCurveX, y: 0),
                          control1: CGPoint(x: rect.size.width / 2 + endXOffset, y: endYOffset),
                          control2: CGPoint(x: rect.size.width / 2 + curveX, y: 0))
            
            path.addLine(to: CGPoint(x: rect.size.width, y: 0))
            path.addLine(to: CGPoint(x: rect.size.width, y: 200))
            path.addLine(to: CGPoint(x: 0, y: 200))
            path.addLine(to: CGPoint(x: 0, y: 0))
        }
    }
    
}
