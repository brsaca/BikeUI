//
//  DarkButtonModifier.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 16/10/23.
//

import SwiftUI

struct DarkButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(red: 0.21, green: 0.25, blue: 0.33), location: 0.00),
                        Gradient.Stop(color: Color(red: 0.13, green: 0.16, blue: 0.2), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: -0.33, y: 0.13),
                    endPoint: UnitPoint(x: 0.9, y: 0.82)
                )
            )
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.clear, lineWidth: 2)
                
            )
    }
}
