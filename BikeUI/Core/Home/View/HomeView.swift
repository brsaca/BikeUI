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
                    
                    // Promo
                    
                    // Filters
                    
                    // Grid Products
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 70)
                .background(Color.background)
                .edgesIgnoringSafeArea(.all)
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
            
           // ButtonWithIcon(type: .square, image: "ellipsis", action: {})
        }
    }
}

// MARK: - Previews
#Preview {
    HomeView()
}
