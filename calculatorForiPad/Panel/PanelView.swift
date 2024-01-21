//
//  PanelView.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 21/11/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//



import UIKit

class PanelView: UIView {
    
    public var button:[Int:UIButton] = [:]
    
    // color
    fileprivate let colorBackground = #colorLiteral(red: 0.968627451, green: 0.9490196078, blue: 0.8980392157, alpha: 1)
    
    fileprivate let panelType = PanelType()
    
    fileprivate let convert = ConvertArray()
    
    fileprivate let stateButton:[String:UIControl.State] = [
        "D": .normal, "H": .highlighted, "S": .selected
    ]
    
    // размер кнопки, интервал между кнопками, размер шрифта, радиус скругления
    fileprivate var setting:(Int,Int,Int,Int) = (0,0,0,0)
    
    fileprivate var numbersType:Array2D<Int>!
    
    init(_ view:UIView, array:ArrayNumber) {
        super.init(frame: CGRect.zero)
        settingView(view)
        numbersType = convert.convertArray(array: array)
        self.frame = framePanel(view, column: numbersType.columns, row: numbersType.rows)
        viewSetUp()
        createButtons(view, array2D: numbersType)
    }
    
    fileprivate func viewSetUp() {
        self.layer.cornerRadius = CGFloat(setting.3)
        self.backgroundColor = colorBackground
    }
    
    fileprivate func settingView(_ view:UIView) {
        if view.frame.width == 768 {
            setting = (60,9,24,30)
        }
        switch view.frame.width {
        case 768...:
            setting = (60,9,24,30)
        case 0..<768:
            setting = (60,9,24,30)
        default:
            print("Размер не обнаружен")
        }
    }
    
    fileprivate func framePanel(_ view:UIView, column:Int, row:Int) -> CGRect {
        let width:CGFloat = CGFloat((setting.0 + setting.1) * column + setting.1)
        let height:CGFloat = CGFloat((setting.0 + setting.1) * row + setting.1)
        let x = view.center.x - CGFloat(width / 2)
        let y = view.center.y - CGFloat(height / 10)
        return CGRect(x: x, y: y, width: width, height: height)
    }
    
    fileprivate func createButtons(_ view:UIView, array2D:Array2D<Int>) {
        // проходится по массиву и добовлят кнопки соответсующий индексу
        for row in 0..<array2D.rows {
            for column in 0..<array2D.columns {
                
                if array2D[column,row]! >= 0 {
                    let button = createButton(at: column,row, for: array2D[column,row]!)
                    self.addSubview(button)
                }
                
            }
        }
    }
    
    fileprivate func createButton(at column:Int,_ row:Int, for type:Int) -> UIButton {
        let button = UIButton(frame: CGRect.zero)
        button.tag = type
        let typeButton = panelType.button[type]
        
        addFrame(button, typeButton!.douSize, at: column, row)
        addBackgroundButton(button, typeButton: typeButton!.typeButton, duo: typeButton!.douSize)
        addText(button, text: typeButton!.sign)
        
        self.button[type] = button
        return button
    }
    
    fileprivate func addFrame(_ button:UIButton,_ type:String, at column:Int,_ row:Int) {
        let pozition = converPoint(colmn: column, row: row)
        let width = CGFloat(type == "B" ? (setting.0 * 2 + setting.1): setting.0 )
        let frame = CGRect(x: pozition.x, y: pozition.y, width: width, height: CGFloat(setting.0))
        button.frame = frame
    }
    
    
    fileprivate func converPoint(colmn:Int, row:Int) -> CGPoint {
        let x = CGFloat((setting.1 + setting.0) * colmn + setting.1)
        let y = CGFloat((setting.1 + setting.0) * row + setting.1)
        return CGPoint(x: x, y: y)
    }
    
    fileprivate func addBackgroundButton(_ button:UIButton, typeButton:TypeButtonName, duo:String ) {
        for state in stateButton {
            let name = "B" + typeButton.rawValue + duo + state.key
            if let image = UIImage.init(named:name) {
                button.setBackgroundImage(image, for: state.value)
            }
        }
    }
    
    fileprivate func addText(_ button:UIButton,text:[String]) {
        button.titleLabel?.font = UIFont(name: "OpenSans-Regular", size: CGFloat(setting.2))
        
        // *
        
        let array = ["D","S"]
        for (index,title) in text.enumerated() {
            
            if text[0] == "0" {
                print("0")
                button.setTitle(("\(title)"), for: stateButton[array[index]]!)
                button.titleLabel?.textAlignment = .left
                // не работает
            } else {
                button.setTitle(title, for: stateButton[array[index]]!)
            }
        }
        
        
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
