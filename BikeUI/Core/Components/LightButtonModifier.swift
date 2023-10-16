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
                Color.gradientStopButtons
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

