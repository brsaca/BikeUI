//
//  SquareButtonWithIcon.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 13/10/23.
//

import SwiftUI

enum TypeButton {
    case dark
    case ligth
    case gradient
}

/// Square Buttons
///
/// How to use it.
/// ```
/// SquareButtonWithIcon(type:.ligth, image: "search", action: {})
/// ```
/// - Parameter
///   - type: .dark / .ligth
///   - image: String Image name from symbols
///   - action: call ontap
///
struct SquareButtonWithIcon: View {
    // MARK: View Properties
    let type: TypeButton
    let image: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            if type == .dark {
                DarkButton
            } else {
                LightButton
            }
        }
    }
    
    var LightButton: some View {
        VStack(alignment: .center, spacing: 10) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28, height: 28)
            
        }
        .padding(10)
        .frame(width: 50, height: 50, alignment: .center)
        .modifier(LightButtonModifier())
    }
    
    var DarkButton: some View {
        VStack(alignment: .center, spacing: 10) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28, height: 28)
            
        }
        .padding(10)
        .frame(width: 50, height: 50, alignment: .center)
        .modifier(DarkButtonModifier())
    }
    
}

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

// MARK: - Previews
#Preview("dark") {
    SquareButtonWithIcon(type: .dark, image: "bike", action: {})
}

#Preview("ligth") {
    SquareButtonWithIcon(type: .ligth, image: "search", action: {})
}
