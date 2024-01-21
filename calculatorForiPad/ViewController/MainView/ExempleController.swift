//
//  ExempleController.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 24/07/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import Foundation

class Exemple {
    
    
    
    
    func signString(_ sign:Int) -> String {
        switch sign {
        case 1:
            return " + "
        case 2:
            return " - "
        case 3:
            return " × "
        case 4:
            return " ÷ "
        default:
            return " = "
        }
    }
    
    
}
