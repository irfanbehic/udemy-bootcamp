//
//  GameScreen.swift
//  WorkStructure
//
//  Created by İrfan Behic Tırpancı on 26.12.2023.
//

import UIKit

class GameScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonFinish(_ sender: Any) {
//        bitir butonuna basıldığında transitionToResultScreen tetiklemek istiyorum
        performSegue(withIdentifier: "transitionToResultScreen", sender: nil)
        
    }
    
    
    @IBAction func buttonBack(_ sender: Any) {
//        Kodlama ile bir önceki sayfaya dönme işlemi
//        navigationController?.popViewController(animated: true)
//        Anasayfaya dönme işlemi
        navigationController?.popToRootViewController(animated: true)
        
        
    }
    
}
