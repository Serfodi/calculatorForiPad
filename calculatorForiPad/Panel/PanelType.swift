//
//  panel.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 30/11/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import Foundation

struct TypeButton {
    let typeButton:TypeButtonName
    let sign:[String]
    var secondColor:Bool = false
    var douSize:String = ""
}

enum TypeButtonName:String {
    case operat = "O"
    case number = "N"
    case service = "S"
}


/**
 This struct contains type button
 */
class PanelType {
    
    class ButtonName {
        let ac = ["AC","C"]
        let plus = ["+"]
        let minus = ["-"]
        let multiplication = ["×"]
        let division = ["÷"]
        let equally = ["="]
    }
    
    let name = ButtonName()
    
    /**
    This enum need for UIButton, that insert image in button
    */
    
    let button = [
        0:TypeButton(typeButton: .number, sign: ["0"], douSize: "B" ),
        1:TypeButton(typeButton: .number, sign: ["1"]),
        2:TypeButton(typeButton: .number, sign: ["2"]),
        3:TypeButton(typeButton: .number, sign: ["3"]),
        4:TypeButton(typeButton: .number, sign: ["4"]),
        5:TypeButton(typeButton: .number, sign: ["5"]),
        6:TypeButton(typeButton: .number, sign: ["6"]),
        7:TypeButton(typeButton: .number, sign: ["7"]),
        8:TypeButton(typeButton: .number, sign: ["8"]),
        9:TypeButton(typeButton: .number, sign: ["9"]),
        10:TypeButton(typeButton: .number, sign: [","]),
        
        11:TypeButton(typeButton: .operat, sign: ButtonName().plus, secondColor: true),
        12:TypeButton(typeButton: .operat, sign: ButtonName().minus, secondColor: true),
        13:TypeButton(typeButton: .operat, sign: ButtonName().multiplication, secondColor: true),
        14:TypeButton(typeButton: .operat, sign: ButtonName().division, secondColor: true),
        15:TypeButton(typeButton: .operat, sign: ButtonName().equally, secondColor: true),
        
        16:TypeButton(typeButton: .service, sign: ButtonName().ac, secondColor: true),
        17:TypeButton(typeButton: .service, sign: ["+ -"]),
        18:TypeButton(typeButton: .service, sign: ["%"]),
    ]
    
}


