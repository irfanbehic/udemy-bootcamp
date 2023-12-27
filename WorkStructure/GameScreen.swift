//
//  GameScreen.swift
//  WorkStructure
//
//  Created by İrfan Behic Tırpancı on 26.12.2023.
//

import UIKit

class GameScreen: UIViewController {
    
    var kisi: Contacts?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi {
            
            print("-------- GameScreen ------")
            print("Kişi Ad :  \(k.name!)")
            print("Kişi Yaş :  \(k.age!)")
            print("Kişi Boy :  \(k.height!)")
            print("Kişi Evlilik :  \(k.marriage!)")
        }
        
        
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
