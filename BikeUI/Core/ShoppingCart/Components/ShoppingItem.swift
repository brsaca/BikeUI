//
//  ShoppingItem.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 16/10/23.
//

import SwiftUI

struct ShoppingItem: View {
    // MARK: View Properties
    let item: Item
    
    var body: some View {
        VStack {
            ItemRow
                .padding(.top, 8)
                .padding(.horizontal, 20)
            Divider()
                .background(.white.opacity(0.5))
        }
        .frame(width: .infinity, height: 108)
    }
}

extension ShoppingItem {
    var ItemRow: some View {
        HStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black.opacity(0.4))
                .overlay(
                    Image(item.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 88, height: 60)
                )
                .frame(width: 100, height: 90)
        
            VStack(alignment: .leading) {
                Text(item.model)
                    .font(.poppins(.bold, size: 15))
                .foregroundColor(.white)
                
                Spacer()
                
                HStack(alignment: .center) {
                    Text(item.formattedAmount)
                        .font(.poppins(.regular, size: 13))
                        .foregroundColor(Color.bBlueText)
                    
                    Spacer()
                    
                    HStack {
                        getOperationButton(isAdd: false)
                        Spacer()
                        Text("1")
                            .font(.poppins(.semibold, size: 16))
                            .foregroundColor(.white)
                        Spacer()
                        getOperationButton(isAdd: true)
                    }
                    .background{
                        Rectangle()
                        .foregroundColor(.clear)
                        .background(Color.bBlueTextField)
                    }
                    .cornerRadius(5)
                    .frame(width: 103, height: 30)
                }
            }
            .frame(height: 90)
        }
    }
    
    @ViewBuilder
    func getOperationButton(isAdd:Bool) -> some View {
         Button{
            
        } label: {
            Image(isAdd ? "plus" : "minus")
                .resizable()
                .frame(width: 24, height: 24)
        }
    }
}

// MARK: - Previews
#Preview {
    ShoppingItem(item: Item.MOCK_ITEMS[0])
        .background(Color.gray)
}
