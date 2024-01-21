//
//  NavigationСontroller.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 11/07/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import UIKit

class NavigationСontrollerView: UIViewController {

    var modelController:ModelController!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            
            if let vc = segue.destination as? SettingsView {
                
                vc.modelController = modelController
                print("NC → SV")
                
            }
        }
    
}
