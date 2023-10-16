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
    @State private var currentPage = 0
    
    var body: some View {
        ZStack {
            Image("rectangle")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .offset(x: 30, y:-80)
            
            VStack {
                // NavBar
                NavBar
                
                // Images Carrousel
                Carrousel
                
                // Details
                
                
                // Add To Cart
                
                Spacer()
            }
        }
        .padding(.horizontal, 10)
        .padding(.top, 70)
        .background(Color.background)
        .edgesIgnoringSafeArea(.all)
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
    
    var Carrousel: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack {
                    ForEach(0..<3, id: \.self) { _ in
                        Image(item.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 200)
                    }
                }
                .scrollTargetLayout()
            }
            .frame(width: .infinity, height: 200)
            .scrollTargetBehavior(.viewAligned)
            .safeAreaPadding(.horizontal, 20)
            
            PageControl(numberOfPages: 3, currentPage: $currentPage)
                            .padding(.top, 8)
        }
        .padding(.top, 30)
    }
}

// MARK: - Previews
#Preview {
    ProductDetailView(item: Item.MOCK_ITEMS[0])
}
