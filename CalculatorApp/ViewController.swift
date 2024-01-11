//
//  ViewController.swift
//  CalculatorApp
//
//  Created by İrfan Behic Tırpancı on 10.01.2024.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet var calcButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in calcButtons {
            
            button.titleLabel?.font = UIFont(name: "System", size: 24)
        }
    }


}

