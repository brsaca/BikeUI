//
//  CustomTabBar.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 16/10/23.
//

import SwiftUI

enum TabItem: String, CaseIterable {
    case bike
    case map
    case cart
    case person
    case doc
    
    var imageOn: String {
        return "bikeOn"
    }
}

struct CustomTabBar: View {
    // MARK: View Properties
    @State private var sectionOn: TabItem = .bike
    
    var body: some View {
        ZStack {
            Image("tabBar")
                .resizable()
                .scaledToFill()
                .frame(width: .infinity, height: 87)
            
            HStack {
                Spacer()
                ForEach(TabItem.allCases, id:\.self) { item in
                    Button {
                        sectionOn = item
                    } label: {
                        Image(sectionOn == item ? item.imageOn : item.rawValue)
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                    }
                    .offset(y: sectionOn == item ? 20 : 40)
                    
                    if item != .doc {
                        Spacer()
                    }
                }
                Spacer()
            }
        }
    }
}

// MARK: - Previews
#Preview {
    CustomTabBar()
}
