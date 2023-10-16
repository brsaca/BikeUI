//
//  Font.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 13/10/23.
//

import SwiftUI

extension Font {
    enum PoppinsFont {
        case black
        case bold
        case extrabold
        case extralight
        case light
        case medium
        case regular
        case semibold
        case thin
        
        var value: String {
            switch self {
            case .black: return "Poppins-Black"
            case .bold: return "Poppins-Bold"
            case .extrabold:  return "Poppins-ExtraBlack"
            case .extralight: return "Poppins-ExtraLight"
            case .light: return "Poppins-Light"
            case .medium: return "Poppins-Medium"
            case .regular: return "Poppins-Regular"
            case .semibold: return "Poppins-SemiBold"
            case .thin: return "Poppins-Thin"
            }
        }
    }

    /**
     Returns a custom Poppins font with the specified type and size.

     - Parameters:
       - type: The PoppinsFont type (e.g., .bold, .medium, .regular).
       - size: The size of the font (default is 26 points).

     - Returns: A custom `Font` with the specified Poppins type and size.
     */
    static func poppins(_ type: PoppinsFont, size: CGFloat = 26) -> Font {
        return .custom(type.value, size: size)
    }
}
