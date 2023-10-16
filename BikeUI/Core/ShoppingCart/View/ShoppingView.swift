//
//  ShoppingView.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 16/10/23.
//

import SwiftUI

struct ShoppingView: View {
    // MARK: View Properties
    @State private var couponTxt: String = ""
    
    private var subtotal: Double {
        var amount:Double = 0
        for item in Item.MOCK_ITEMS {
            amount += item.price
        }
        return amount
    }
    
    private let discount: Int = 30
    
    private var total: Double {
        return (subtotal * Double(discount)) / 100
    }
    
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
            PriceDetails
            
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
        .frame(maxHeight: UIScreen.main.bounds.height * 0.42)
    }
    
    var Coupon: some View {
        VStack {
            Text("Your Cart Qualifies For Free Delivery")
                .font(.poppins(.medium, size: 15))
                .foregroundColor(Color.bWhiteOpacity8)
            
            HStack(alignment:.center) {
                TextField("Coupon", text: $couponTxt)
                    .font(.poppins(.medium, size: 15))
                    .foregroundColor(Color.bWhiteOpacity8)
                    .padding(.horizontal, 20)
                Spacer()
                ButtonWithText(title: "Apply", kind: .primaryAction, action: {})
            }
            .background{
                Rectangle()
                    .foregroundColor(.clear)
                    .background(Color.bBlueTextField)
            }
            .cornerRadius(10)
            .frame(width: .infinity, height: 44)
        }
        .padding()
    }
    
    var PriceDetails: some View {
        VStack(spacing: 10){
            getPriceInfo(for: "Subtotal:", value: subtotal.formatWithCurrency())
            
            getPriceInfo(for: "Delivery Fee:", value: "$0")
            
            getPriceInfo(for: "Discount:", value: "\(discount)%")
                
            getPriceInfo(for: "Total:", value: total.formatWithCurrency(), isTotal: true)
                .padding(.top, 10)
        }
        .padding()
    }
    
    @ViewBuilder
    func getPriceInfo(for title: String, value: String, isTotal: Bool = false) -> some View {
        HStack {
            Text(title)
                .font(.poppins(.semibold, size: 15))
                .foregroundStyle(Color.bWhiteOpacity8)
            
            Spacer()
            
            if isTotal {
                Text(value)
                    .font(.poppins(.bold, size: 17))
                    .foregroundColor(Color.bBlueText)
            } else {
                Text(value)
                    .font(.poppins(.regular, size: 15))
                    .foregroundColor(Color.bGrayAmounts)
            }
        }
    }
}

// MARK: - Previews
#Preview {
    ShoppingView()
}
