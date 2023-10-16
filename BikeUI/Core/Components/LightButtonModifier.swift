//
//  LightButtonModifier.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 16/10/23.
//

import SwiftUI

struct LightButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(red: 0.22, green: 0.71, blue: 0.91), location: 0.00),
                        Gradient.Stop(color: Color(red: 0.29, green: 0.3, blue: 0.93), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: -0.33, y: 0.13),
                    endPoint: UnitPoint(x: 0.9, y: 0.82)
                )
            )
            .cornerRadius(10)
            .shadow(color: Color(red: 0.06, green: 0.08, blue: 0.11).opacity(0.8), radius: 15, x: 0, y: 20)
            .shadow(color: Color(red: 0.17, green: 0.2, blue: 0.27).opacity(0.2), radius: 15, x: 0, y: -20)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.clear, lineWidth: 2)
            )
    }
}

