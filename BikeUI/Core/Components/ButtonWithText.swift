//
//  ButtonWithText.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 16/10/23.
//

import SwiftUI

enum ButtonKind {
    case primaryAction
    case secoundaryAction
    case primaryOption
    case secoundaryOption
    
    var font: Font {
        switch self {
        case .primaryAction: return .poppins(.bold, size: 15)
        case .secoundaryAction: return .poppins(.medium, size: 15)
        case .primaryOption: return .poppins(.bold, size: 18)
        case .secoundaryOption: return .poppins(.regular, size: 18)
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .primaryAction, .secoundaryAction, .secoundaryOption: return .white.opacity(0.8)
        case .primaryOption: return Color.bBlueButton
        }
    }
    
}

struct ButtonWithText: View {
    //MARK: View Properties
    let title: String
    let kind: ButtonKind
    
    var body: some View {
        switch kind {
        case .primaryAction, .secoundaryAction:
             Button
                .modifier(LightButtonModifier())
        case .primaryOption, .secoundaryOption:
             Button
                .modifier(DarkButtonModifier())
        }
    }
}

extension ButtonWithText {
    var Button: some View {
        HStack(alignment: .center, spacing: 10) {
            Text(title)
                .font(kind.font)
                .foregroundColor(kind.foregroundColor)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
    }
}

// MARK: - Previews
#Preview("primaryAction") {
    ButtonWithText(title: "Apply", kind: .primaryAction)
}

#Preview("secoundaryAction") {
    ButtonWithText(title: "Add To Cart", kind: .secoundaryAction)
}

#Preview("primaryOption") {
    ButtonWithText(title: "Description", kind: .primaryOption)
}

#Preview("secoundaryOption") {
    ButtonWithText(title: "Suscription", kind: .secoundaryOption)
}
