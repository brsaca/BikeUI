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
        
    static func poppins(_ type: PoppinsFont, size: CGFloat = 26) -> Font {
        return .custom(type.value, size: size)
    }
}
