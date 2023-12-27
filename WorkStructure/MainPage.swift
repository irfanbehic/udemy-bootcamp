//
//  ViewController.swift
//  WorkStructure
//
//  Created by İrfan Behic Tırpancı on 26.12.2023.
//

import UIKit

class MainPage: UIViewController {
    
    @IBOutlet weak var labelMainPage: UILabel!
    
    override func viewDidLoad() { // Uygulama açıldığında çalışır. 1 kere çalışır
        super.viewDidLoad()
        labelMainPage.text = "Hello Developer"
        print("viewDidLoad çalıştı")
    }
    
    override func viewWillAppear(_ animated: Bool) { //Sayfa her göründüğünde çalışır.
        print("viewWillAppear çalıştı")

    }
    
    override func viewWillDisappear(_ animated: Bool) { // Sayfa her görünmez olduğunda çalışır.
        print("viewDisAppear çalıştı")

    }
    
    
    
    
    
    @IBAction func buttonDoIt(_ sender: Any) {
        
        labelMainPage.text = "Let's Go"
        
    }
    
    
    @IBAction func buttonStart(_ sender: Any) {
       let kisi = Contacts(name: "Leonardo", age: 24, height: 187, marriage: false)
        //        Başla butonuna basınca transitiontoGameScreen'i tetiklemek istiyorum.
        performSegue(withIdentifier: "transitionToGameScreen", sender: kisi)
    }
    
//    Sayfalar arası veri transferi için
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepare metodu çalıştı.")
        
//        Geçişi filtreliyoruz
        if segue.identifier == "transitionToGameScreen" {
            
            print("Transiction to HomeScreen çalıştı")
//            Verimizi stringe çeviriyoruz.
            if let veri = sender as? Contacts {
                
             
//                Burası ile diğer sayfaya erişiyoruz.
                let destinationVC = segue.destination as! GameScreen
                
                destinationVC.kisi = veri
                
            }
            
        }
    }
    
}
