//
//  calculatorBrain.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 21/07/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import Foundation

class CalculatorController {
    
    fileprivate enum OperationFunc {
        case binaryOperation ( (Double,Double) -> Double, Int )
        case equally
    }
    
    fileprivate var operations: [Int : OperationFunc] = [
        15 : OperationFunc.equally,
        11 : OperationFunc.binaryOperation( { $0 + $1 }, 0 ),
        12 : OperationFunc.binaryOperation( { $0 - $1 }, 0 ),
        13 : OperationFunc.binaryOperation( { $0 * $1 }, 1 ),
        14 : OperationFunc.binaryOperation( { $0 / $1 }, 1)
    ]
    
    
    fileprivate struct InfoBinary {
        var binaryOperation: (Double,Double) -> Double
        var number: Double
    }
    
    fileprivate var info:[InfoBinary?] = [nil, nil, nil]
    
    open var result:Double! = nil
    
    var count = 0
    
//    MARK: - func operation
    
    
    open func operation(sign:Int, number:Double, newInput: Bool) {
        
        guard let operation = operations[sign] else { return }
        switch operation {
            
        case .binaryOperation(let action, let procedure):
            
            // механизм смена знака
            if newInput {
                info[count] = InfoBinary(binaryOperation: action, number: number)
                count += 1
            } else {
                info[count-1] = InfoBinary(binaryOperation: action, number: info[count-1]!.number)
            }
            
            // вычисления
            if result != nil {
                
                for i in 0...count {
                    result = info[i]?.binaryOperation(result, info[i]!.number)
                }
                
            } else {
                result = number
            }
            
            
        case .equally:
            count = 0
            break
        }
        
        
        
    }
    
    
    open func discharge() {
        result = nil
        info = []
    }
    
    
}
