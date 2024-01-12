//
//  ContactsRegistry.swift
//  ContactsApp
//
//  Created by İrfan Behic Tırpancı on 12.01.2024.
//

import UIKit

class ContactsRegistry: UIViewController {
    
    @IBOutlet weak var tfPersonName: UITextField!
    
    @IBOutlet weak var tfPersonTel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonSave(_ sender: UIButton) {
        if let pa = tfPersonName.text, let pt = tfPersonTel.text {
            saveInfo(person_name: pa, person_tel: pt)
        }
    }
    
    func saveInfo(person_name:String,person_tel:String) {
        print("Person Registry : \(person_name) ----  \(person_tel)")
    }

}
