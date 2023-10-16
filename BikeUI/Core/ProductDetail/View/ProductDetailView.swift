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
                Spacer()
                ButtonWithText(title: "Description", kind: .primaryOption)
                Spacer()
                ButtonWithText(title: "Suscription", kind: .secoundaryOption)
                Spacer()
            }
            .padding(.vertical, 20)
            
            Text(item.model)
                .font(.poppins(.bold, size: 17))
                .padding(.leading, 20)
                .foregroundColor(.white)
            
            Text(item.details)
                .font(.poppins(.regular, size: 15))
                .foregroundColor(.white.opacity(0.6))
                .padding(.horizontal, 20)
            
            Spacer()
            
            BottomBar
                .padding(.vertical)
                .padding(.leading, -5)
        }
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
        .padding(.leading, -10)
    }
    
    var BottomBar: some View {
        HStack {
            Text(item.formattedAmount)
                .font(.poppins(.regular, size: 24))
              .foregroundColor(Color(red: 0.22, green: 0.71, blue: 0.91))
              .padding(.leading, 30)
              
            Spacer()
            
            ButtonWithText(title: "Add To Cart", kind: .secoundaryAction)
                .padding(.trailing, 30)
        }
          .frame(width: .infinity, height: 104)
          .background(
            LinearGradient(
              stops: [
                Gradient.Stop(color: Color(red: 0.21, green: 0.25, blue: 0.33), location: 0.00),
                Gradient.Stop(color: Color(red: 0.13, green: 0.16, blue: 0.2), location: 1.00),
              ],
              startPoint: UnitPoint(x: 0.46, y: 0),
              endPoint: UnitPoint(x: 0.47, y: 0.59)
            )
          )
          .cornerRadius(50)
          .shadow(color: Color(red: 0.11, green: 0.13, blue: 0.18).opacity(0.25), radius: 20, x: 0, y: -10)
          .overlay(
            RoundedRectangle(cornerRadius: 50)
              .inset(by: 1)
              .stroke(.clear, lineWidth: 2)
          )
    }
}

// MARK: - Previews
#Preview {
    ProductDetailView(item: Item.MOCK_ITEMS[0])
}
