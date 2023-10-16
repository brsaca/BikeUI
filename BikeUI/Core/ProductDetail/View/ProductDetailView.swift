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
                    .padding(.horizontal, 10)
                
                // Images Carrousel
                Carrousel
                
                // Details
                Information
                
                // Add To Cart
                
                Spacer()
            }
        }
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
    
    var Information: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                HStack(alignment: .center, spacing: 10) {
                    Text("Description")
                        .font(.poppins(.bold, size: 18))
                        .foregroundColor(Color(red: 0.22, green: 0.71, blue: 0.91))
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(Color(red: 0.21, green: 0.25, blue: 0.33))
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.25), radius: 5, x: 4, y: 4)
                .shadow(color: .white.opacity(0.25), radius: 5, x: -4, y: -4)
                
                Spacer()
                
                HStack(alignment: .center, spacing: 10) {
                    Text("Suscription")
                        .font(.poppins(.regular, size: 18))
                        .foregroundColor(.white.opacity(0.8))
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(Color(red: 0.21, green: 0.25, blue: 0.33))
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.25), radius: 5, x: 4, y: 4)
                .shadow(color: .white.opacity(0.25), radius: 5, x: -4, y: -4)
            }
            Spacer()
        }
        .frame(width: .infinity, height: 450)
        .cornerRadius(20)
       /* .background(
          LinearGradient(
            stops: [
              Gradient.Stop(color: Color(red: 0.21, green: 0.25, blue: 0.33), location: 0.00),
              Gradient.Stop(color: Color(red: 0.13, green: 0.16, blue: 0.2), location: 1.00),
            ],
            startPoint: UnitPoint(x: 0.02, y: 0.03),
            endPoint: UnitPoint(x: 0.45, y: 0.38)
          )
        ) */
        .padding(.leading, -10)
    }
    
    var Information2: some View {
        Rectangle()
          .frame(width: .infinity, height: 450)
          .background(
            LinearGradient(
              stops: [
                Gradient.Stop(color: Color(red: 0.21, green: 0.25, blue: 0.33), location: 0.00),
                Gradient.Stop(color: Color(red: 0.13, green: 0.16, blue: 0.2), location: 1.00),
              ],
              startPoint: UnitPoint(x: 0.02, y: 0.03),
              endPoint: UnitPoint(x: 0.45, y: 0.38)
            )
          )
          .cornerRadius(20)
    }
}

// MARK: - Previews
#Preview {
    ProductDetailView(item: Item.MOCK_ITEMS[0])
}
