//
//  Settings.swift
//  calculatorForiPad
//
//  Created by Сергей Насыбуллин on 11/07/2020.
//  Copyright © 2020 NasybullinSergei. All rights reserved.
//

import UIKit

// rootViewController for navigationBar

class SettingViewController: UIViewController {

    
//    MARK: - variables and constants
    
//    General
    var modelController:ModelController!
    
    public weak var delegate: ClosedProtocol?
    
//    MARK: - view
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) { self.isModalInPresentation = true }
        
        setUpNavigationBar()
    }
    
    

//    MARK: - IBAction
    
    
    
    @IBAction func radey(_ sender: Any) {
        
        dismiss(animated: true)
        
        
        
    }
    
    
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let gvc = segue.destination as? GeneralViewController else { return }
        
        gvc.modelController = modelController
        gvc.delegate = delegate
        
        
        
        
    }
    

    
//    MARK: - func
    
    
    func setUpNavigationBar() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
}
