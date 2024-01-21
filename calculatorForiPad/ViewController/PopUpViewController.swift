//
//  PopUpViewController.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 20/07/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    
    
    var modelController:ModelController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let nvc = segue.destination as? UINavigationController else { return }
        guard let svc = nvc.viewControllers.first as? SettingViewController else { return }
        
        svc.modelController = modelController
        
    }
    
    
    
    
}
