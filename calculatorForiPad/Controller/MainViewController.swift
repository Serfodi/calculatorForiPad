//
//  ViewController.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 10/07/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
        
    
    @IBOutlet weak var outputNumber: UILabel!
    
    @IBOutlet weak var outputExample: UILabel!
    
    
    @IBOutlet weak var buttonAC: UIButton!
    @IBOutlet var buttonNumber: [UIButton]!
    @IBOutlet weak var buttonPoint: UIButton!
    @IBOutlet var buttonOperation: [UIButton]!
    @IBOutlet weak var buttonEqually: UIButton!
    
    
    //    MARK: - variables and constants
    
    var input: String {
        set {
            inputString = newValue
            inputNumber = Double(inputString)!
        }
        get {
            return inputString
        }
    }
    var inputString = ""
    
    var inputNumber = 0.0
    
    var signButton:Int! {
        willSet {
            guard newValue != nil else { return }
        }
        didSet {
            guard oldValue != nil else { return }

        }
    }
    
    var exemple:String {
        set {
            outputExample.text! = newValue
        }
        get {
            return outputExample.text!
        }
    }
    

    var newInput = false
    
    let calculator = CalculatorController()
    
    
    
//    MARK: - view
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
//    MARK: - Action for calculator
    
    /// Ввод числа
    @IBAction func inputNumber(_ sender: UIButton) {
        if newInput {
            // последующий ввод
            input += String(sender.tag)
        } else {
            // первый ввод
            input = String(sender.tag)
            newInput = true
            signButton = nil
        }
        outputNumber.text = input
    }
    
    @IBAction func inputZero(_ sender: UIButton) {
        input += "0"
        outputNumber.text = input
    }
    
    
    
//    MARK: - Operator input
    
    
    
    @IBAction func operators(_ sender: UIButton) {
        signButton = sender.tag
        // Вычисления
        calculator.operation(sign: signButton, number: inputNumber, newInput: newInput)
        input = String(calculator.result)
        // Вывод на экран ответы
        outputNumber.text = input
        // Разрешения нового ввода числа
        newInput = false
    }
    
    
    
    
    
    // сброс
    @IBAction func discharge(_ sender: UIButton) {
        signButton = nil
        input = "0"
        newInput = false
        calculator.discharge()
        exemple = ""
//        panelStandart.button[16]!.isSelected = false
    }
    
    
    
}
