//
//  PanelButtonIndex.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 11/12/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import Foundation

struct PanelButtonIndex {
    
    public enum Count:Int {
        case standatr = 29
    }
    
    fileprivate var count:Count!
    
    fileprivate var panelStandartIndex:[Int]!
    
    var array:[Int] {
        get {
            return panelStandartIndex
        }
    }
    
    init(count:Count) {
        self.count = count
        self.panelStandartIndex = [Int] (repeating: -1, count: count.rawValue)
    }
    
    subscript (at index:Int) -> Int {
        set {
            assert(index < 30, "Выход за пределы в массиве PanelButtonIndex")
            panelStandartIndex[index] = newValue
        }
        get {
            assert(index < 30, "Выход за пределы в массиве PanelButtonIndex")
            return panelStandartIndex[index]
        }
    }
    
}
