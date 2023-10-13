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
    static let bBlueContainer = Color("blueContainer")
    static let background = Color("blueBackground")
    static let bBlueText = Color("blueText")
}
