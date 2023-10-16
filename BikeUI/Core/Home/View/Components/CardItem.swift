//
//  CardItem.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 15/10/23.
//

import SwiftUI

struct CardItem: View {
    // MARK: View Properties
    let item: Item
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
                Image(isPar ? "heart-filled" : "heart")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 24, height: 24)
                    .offset(x:110)
                
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130, height: 84)
                
                Text(item.name)
                    .font(.poppins(.medium, size: 13))
                    .foregroundStyle(.white.opacity(0.6))

                Text(item.model)
                    .font(.poppins(.bold, size: 15))
                    .foregroundStyle(.white)
                
                Text(item.formattedAmount)
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
    CardItem(item: Item.MOCK_ITEMS[0], index: 0)
}

#Preview("light") {
    CardItem(item: Item.MOCK_ITEMS[2], index: 1)
}
