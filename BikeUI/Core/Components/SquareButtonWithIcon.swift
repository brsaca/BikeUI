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

// MARK: - Previews
#Preview("dark") {
    SquareButtonWithIcon(type: .dark, image: "bike", action: {})
}

#Preview("ligth") {
    SquareButtonWithIcon(type: .ligth, image: "search", action: {})
}
