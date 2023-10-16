//
//  Double.swift
//  BikeUI
//
//  Created by Brenda Saavedra Cantu on 15/10/23.
//

import Foundation

extension Double {
    /// format a number in default two decimals
    func formatWithCurrency(minFractionDigits: Int = 2, maxFractionDigits: Int = 2) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = minFractionDigits
        formatter.maximumFractionDigits = maxFractionDigits
        
        if let formattedString = formatter.string(from: NSNumber(value: self)) {
            return "$\(formattedString)"
        } else {
            return String(self)
        }
    }
}

