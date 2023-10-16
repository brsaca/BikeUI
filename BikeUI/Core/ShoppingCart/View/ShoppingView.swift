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
            Coupon
            
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
    
    var Coupon: some View {
        VStack {
            Text("Your Cart Qualifies For Free Delivery")
                .font(.poppins(.medium, size: 15))
                .foregroundColor(Color.bWhiteOpacity8)
        }
    }
}

// MARK: - Previews
#Preview {
    ShoppingView()
}
