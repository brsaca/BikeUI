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
                .padding(.horizontal, 20)
            
            // Products
            Products
            
            // Coupon
            
            // Price
            
            // Checkout
            Spacer()
        }
        .padding(.top, 70)
        .background(Color.background.opacity(0.98))
        .edgesIgnoringSafeArea(.all)
        
    }
}

extension ShoppingView {
    var Products: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(Item.MOCK_ITEMS) { item in
                    ShoppingItem(item: item)
                }
            }
        }
    }
}

// MARK: - Previews
#Preview {
    ShoppingView()
}
