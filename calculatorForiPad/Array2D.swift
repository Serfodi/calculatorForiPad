//
//  2DArray.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 22/11/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import Foundation

struct Array2D<T> {
    
    let columns:Int
    let rows:Int
    
    fileprivate var array: Array<T?>
    
    init(columns:Int, rows:Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(repeating: nil, count: rows * columns)
    }
    
    /**
     get and set for column, row
     */
    subscript(column:Int, row:Int) -> T? {
        get {
            return array[row * columns + column]
        }
        set {
            array[row * columns + column] = newValue
        }
    }
    
    
    /**
    get and set for index
    */
    subscript (_ index:Int) -> T? {
        get {
            return array[index]
        }
        set {
            array[index] = newValue
        }
    }
    
}
