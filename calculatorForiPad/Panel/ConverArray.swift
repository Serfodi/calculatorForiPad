//
//  ConverArray.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 12/12/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import Foundation

class ConvertArray {
    
    func convertArray(array:ArrayNumber) -> Array2D<Int> {
        var array2D = Array2D<Int>(columns: array.columns, rows: array.rows)
        for (index,type) in array.array.enumerated() { array2D[index] = type }
        return array2D
    }
    /*
    fileprivate func analizePanel(index:[Int]) -> (Int,Int) {
        return (4,5)
    }
    */
}
