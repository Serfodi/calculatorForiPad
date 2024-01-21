//
//  NavigationController.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 12/07/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import UIKit

class NavigationControllerOne: UINavigationController {

    var modelController:ModelController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(modelController.hideExample.hide)
    }
    

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        print("есть")
        
        if let vc = segue.destination as? SettingsView {
            vc.modelController = modelController
            print("NC → SV")
        }
        
    }
    

    
}
