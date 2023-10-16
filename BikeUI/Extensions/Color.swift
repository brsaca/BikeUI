//
//  Color.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 13/10/23.
//

import SwiftUI

extension Color {
    static let gradientLightBlue = LinearGradient(colors: [Color(red: 0.22, green: 0.71, blue: 0.91), Color(red: 0.29, green: 0.3, blue: 0.93)], startPoint: .topLeading, endPoint: .bottomTrailing)
    static let gradientDarkBlue = LinearGradient(colors: [Color(red: 0.21, green: 0.25, blue: 0.33), Color(red: 0.13, green: 0.16, blue: 0.2)], startPoint: .trailing, endPoint: .leading)
    static let gradientStopBlue = LinearGradient(
        stops: [
          Gradient.Stop(color: Color(red: 0.21, green: 0.25, blue: 0.33), location: 0.00),
          Gradient.Stop(color: Color(red: 0.13, green: 0.16, blue: 0.2), location: 1.00),
        ],
        startPoint: UnitPoint(x: 0.46, y: 0),
        endPoint: UnitPoint(x: 0.47, y: 0.59)
      )
    static let gradientStopInfoBlue = LinearGradient(
        stops: [
            Gradient.Stop(color: Color(red: 0.21, green: 0.25, blue: 0.33), location: 0.00),
            Gradient.Stop(color: Color(red: 0.13, green: 0.16, blue: 0.2), location: 1.00),
        ],
        startPoint: UnitPoint(x: 0.02, y: 0.03),
        endPoint: UnitPoint(x: 0.45, y: 0.38)
    )
    static let shadowBlue = Color(red: 0.11, green: 0.13, blue: 0.18).opacity(0.25)
    static let bBlueContainer = Color("blueContainer")
    static let background = Color("blueBackground")
    static let bBlueText = Color("blueText")
    static let bBlueButton = Color(red: 0.22, green: 0.71, blue: 0.91)
}
