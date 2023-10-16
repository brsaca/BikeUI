//
//  ShoppingView.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 16/10/23.
//

import SwiftUI

struct ShoppingView: View {
    // MARK: View Properties
    
    
    var body: some View {
        VStack {
            // NavBar
            CustomNavBar(title: "My Shopping Cart")
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.top, 70)
        .background(Color.background)
        .edgesIgnoringSafeArea(.all)
        
    }
}

extension ShoppingView {
    
}

// MARK: - Previews
#Preview {
    ShoppingView()
}
