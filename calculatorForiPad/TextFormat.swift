//
//  TextFormat.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 23/07/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import Foundation

let sepatator = "."

struct TextFormat {
    
    func separatedNumber(for number: Any) -> String {
    guard let itIsANumber = number as? NSNumber else { return "Not a number" }
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.groupingSeparator = " "
    formatter.decimalSeparator = sepatator
        return formatter.string(from: itIsANumber)!
    }
    
}
