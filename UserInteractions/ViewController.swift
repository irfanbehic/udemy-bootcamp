//
//  ViewController.swift
//  UserInteractions
//
//  Created by İrfan Behic Tırpancı on 2.01.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonSimpleAlert(_ sender: Any) {
//        alerti tanımlıyoruz
        let alertController = UIAlertController.init(title: "Title",
                                                     message: "Hello",
                                                     preferredStyle: .alert)

//    Alerte buton ekleme . Bu butona basıldığında işlem yapılmasını istiyorsak closure oluşturuyoruz.
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {action in
            print("Cancel tapped")
            
        }
        alertController.addAction(cancelAction)
        let okayAction = UIAlertAction(title: "Okay", style: .destructive) {action in
            print("Okay tapped")
            
        }
        alertController.addAction(okayAction)
        
        //        alerti gösteriyoruz.
        self.present(alertController, animated: true)
        
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        //        alerti tanımlıyoruz
                let alertController = UIAlertController.init(title: "Title",
                                                             message: "Hello",
                                                             preferredStyle: .actionSheet)

        //    Alerte buton ekleme . Bu butona basıldığında işlem yapılmasını istiyorsak closure oluşturuyoruz.
                
                let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {action in
                    print("Cancel tapped")
                    
                }
                alertController.addAction(cancelAction)
                let okayAction = UIAlertAction(title: "Okay", style: .destructive) {action in
                    print("Okay tapped")
                    
                }
                alertController.addAction(okayAction)
                
                //        alerti gösteriyoruz.
                self.present(alertController, animated: true)
        
    }
    
    @IBAction func buttonSpecialAlert(_ sender: Any) {
        
        let alertController = UIAlertController.init(title: "Title",
                                                     message: "Hello",
                                                     preferredStyle: .alert)

//    Alerte buton ekleme . Bu butona basıldığında işlem yapılmasını istiyorsak closure oluşturuyoruz.
        
        alertController.addTextField() {textField in
            textField.placeholder = "Input data.."
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
            
            
        }
    
        let okayAction = UIAlertAction(title: "Save", style: .cancel) {action in
//           Girilen değeri yazdırma
            let tf = alertController.textFields![0] as UITextField
            
            if let getData = tf.text {
                print("Data : \(getData)")
            }
            
        }
        alertController.addAction(okayAction)
        
        //        alerti gösteriyoruz.
        self.present(alertController, animated: true)

        
    }
    
}

