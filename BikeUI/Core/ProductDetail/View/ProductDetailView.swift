//
//  ProductDetailView.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 16/10/23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: View Properties
    let item: Item
    
    var body: some View {
        ZStack {
            VStack {
                // NavBar
                NavBar
                Spacer()
            }
            .padding(.horizontal, 10)
            .padding(.top, 70)
            .background(Color.background)
            .edgesIgnoringSafeArea(.all)
            
            Image("rectangle")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .offset(x: 30, y:0)
            
            // Images Carrousel
            
            
            // Details
            
            
            // Add To Cart
            
        }
    }
}

extension ProductDetailView {
    var NavBar: some View {
        HStack {
            SquareButtonWithIcon(type: .ligth, image: "chevron.left", action: {})
            Spacer()
            
            Text(item.model)
                .font(.poppins(.semibold, size: 20))
                .foregroundStyle(.white)
            
            Spacer()
        }
        .padding(.horizontal, 15)
    }
}

// MARK: - Previews
#Preview {
    ProductDetailView(item: Item.MOCK_ITEMS[0])
}
