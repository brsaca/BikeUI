//
//  Item.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 15/10/23.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let model: String
    let details: String
    let image: String
    let price: Double
    
    var formattedAmount: String {
        return price.formatWithCurrency()
    }
}

extension Item {
    static let MOCK_ITEMS = [
        Item(name: "Road Bike", model: "PEUGEOT - LR01 ", details: "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.", image: "bike2", price: 1999.99),
        Item(name: "Road Bike", model: "PILOT - CHROMOLY", details: "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.", image: "bike3", price: 3999.99),
        Item(name: "Road Bike", model: "SMITH - Trade ", details: "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.", image: "whiteHalmet", price: 120.00)
    ]
}
