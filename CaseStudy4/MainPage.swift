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

    
    @IBAction func labelGoToA(_ sender: Any) {
        performSegue(withIdentifier: "labelGoToA", sender: MainPage())
    }
    
    
    @IBAction func labelGoToB(_ sender: Any) {
        performSegue(withIdentifier: "labelGoToB", sender: MainPage())
    }
    
}

