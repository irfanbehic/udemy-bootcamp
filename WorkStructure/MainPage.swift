//
//  ViewController.swift
//  WorkStructure
//
//  Created by İrfan Behic Tırpancı on 26.12.2023.
//

import UIKit

class MainPage: UIViewController {

    @IBOutlet weak var labelMainPage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelMainPage.text = "Hello Developer"
    }

    @IBAction func buttonDoIt(_ sender: Any) {
        
        labelMainPage.text = "Let's Go"
        
    }
    
    
    @IBAction func buttonStart(_ sender: Any) {
//        Başla butonuna basınca transitiontoGameScreen'i tetiklemek istiyorum.
        performSegue(withIdentifier: "transitionToGameScreen", sender: nil)
        
        
    }
    
}

