//
//  CustomNavBar.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 16/10/23.
//

import SwiftUI

struct CustomNavBar: View {
    // MARK: View Properties
    let title: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack {
            SquareButtonWithIcon(type: .ligth, image: "chevron.left", action: {
                dismiss()
            })
            
            Spacer()
            
            Text(title)
                .font(.poppins(.semibold, size: 20))
                .foregroundStyle(.white)
            
            Spacer()
        }
    }
}

// MARK: - Previews
#Preview {
    CustomNavBar(title: "My Shopping Cart")
        .background(.yellow)
}
