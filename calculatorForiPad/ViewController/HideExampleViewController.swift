//
//  HideExample.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 21/07/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import UIKit

class HideExampleViewController: UIViewController {
    
    
//    MARK: - IBOutlet
    
    @IBOutlet weak var switchHideExemple: UISwitch!
    
    public weak var delegate: ClosedProtocol?
    
//    MARK: - variables and constants
    
    var modelController: ModelController!
    
    
    
//    MARK: - view
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
//    MARK: - IBAction
    
    
    @IBAction func hideExemple(_ sender: UISwitch) {
        
        let new = HideExample(Bool: sender.isOn)
//        modelController.switchHide = new
        
        self.delegate?.HideExampleController(controller: self)
        
    }
    
    
    
    @IBAction func ready(_ sender: UIBarButtonItem) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
}
