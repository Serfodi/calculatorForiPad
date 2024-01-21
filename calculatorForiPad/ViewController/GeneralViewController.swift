//
//  AdvancedSettings.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 10/07/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import UIKit

class GeneralViewController: UIViewController {
    
    
//    MARK: - variables and constants
    
    var modelController: ModelController!
    
    public weak var delegate: ClosedProtocol?
    
    
    
    // MARK: - IBAction
    
    @IBAction func ready(_ sender: UIBarButtonItem) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
//    MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let hevc = segue.destination as? HideExampleViewController else { return }
        hevc.modelController = modelController
        hevc.delegate = delegate
        
        
    }

    
    
}
