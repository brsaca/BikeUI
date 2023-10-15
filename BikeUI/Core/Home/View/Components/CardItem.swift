//
//  CardItem.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 15/10/23.
//

import SwiftUI

struct CardItem: View {
    // MARK: View Properties
    let index: Int
    
    private var isPar: Bool {
        return index % 2 == 0
    }
    
    var body: some View {
        ZStack {
            Image(isPar ? "rectangleDarkCard" : "rectangleLightCard")
                .resizable()
                .scaledToFill()
            .frame(width: 165, height: 240)
            
            VStack(alignment: .leading) {
                Image("heart-filled")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 24, height: 24)
                    .offset(x:110)
                
                Image("bike1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 84)
                
                Text("Road Bike")
                    .font(.poppins(.medium, size: 13))
                    .foregroundStyle(.white.opacity(0.6))

                Text("PEUGEOT - LR01")
                    .font(.poppins(.bold, size: 15))
                    .foregroundStyle(.white)
                
                Text("$1,999.99")
                    .font(.poppins(.medium, size: 13))
                    .foregroundColor(.white.opacity(0.6))
                
                Spacer()
                
            }
            .frame(width: 165, height: 240)
            .offset(x:0, y:20)
        }
    }
}

// MARK: - Previews
#Preview("dark") {
    CardItem(index: 0)
}

#Preview("light") {
    CardItem(index: 1)
}
