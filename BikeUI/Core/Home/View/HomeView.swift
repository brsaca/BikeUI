//
//  HomeView.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 13/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
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
                    .offset(y:100)
                
                VStack {
                    // Promo
                    Promo
                    
                    // Filters
                    Filters
                    
                    // Grid Products
                    
                    Spacer()
                }
                .padding(.horizontal, 10)
            }
        }
    }
}

extension HomeView {
    var NavBar: some View {
        HStack {
            Text("Choose Your Bike")
                .font(.poppins(.semibold, size: 20))
                .foregroundStyle(.white)
            
            Spacer()
            
            SquareButtonWithIcon(type: .ligth, image: "search", action: {})
        }
    }
    
    var Promo: some View {
        VStack(alignment: .leading, spacing: 15) {
            Image("bike1")
                .resizable()
                .scaledToFit()
                .frame(width: 285, height: 137)
                .padding()
            
            Text("30% off")
                .font(.poppins(.semibold, size: 26))
                .foregroundStyle(.gray)
                .padding(.leading, 20)
                .padding(.bottom, 15)
        }
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blueContainer.opacity(0.4))
            }
        )
        .frame(width: .infinity, height: 200)
        .padding(.top, 100)
    }
    
    var Filters: some View {
        HStack(alignment: .bottom) {
            AllFilterButton
            
            SquareButtonWithIcon(type: .dark, image: "bike", action: {})
                .padding(.bottom, 15)
            
            SquareButtonWithIcon(type: .dark, image: "road", action: {})
                .padding(.bottom, 30)
            
            SquareButtonWithIcon(type: .dark, image: "mountain", action: {})
                .padding(.bottom, 45)
            
            SquareButtonWithIcon(type: .dark, image: "halmet", action: {})
                .padding(.bottom, 60)
        }
        .frame(width: .infinity, height: 150)
    }
    
    var AllFilterButton: some View {
        Button {
            
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.clear, lineWidth: 0)
                .background(
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill( Color.gradientLightBlue)
                            .overlay(
                                Text("All")
                                    .font(.poppins(.regular, size: 16))
                                    .foregroundStyle(.white)
                            )
                    }
                )
                .frame(width: 50, height: 50)
        }
    }
    
}

// MARK: - Previews
#Preview {
    HomeView()
}
