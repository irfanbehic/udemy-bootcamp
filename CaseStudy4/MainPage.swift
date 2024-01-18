//
//  ViewController.swift
//  CaseStudy4
//
//  Created by İrfan Behic Tırpancı on 28.12.2023.
//

import UIKit

class MainPage: UIViewController {

    @IBOutlet weak var labelMainPage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonGoToA(_ sender: Any) {
        performSegue(withIdentifier: "TransitionToA", sender: nil)
        
    }
    
    
    @IBAction func buttonGoToX(_ sender: Any) {
        
        performSegue(withIdentifier: "TransitionToX", sender: nil)
    }
    
}

