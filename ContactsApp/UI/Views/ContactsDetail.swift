//
//  ContactsDetail.swift
//  ContactsApp
//
//  Created by İrfan Behic Tırpancı on 12.01.2024.
//

import UIKit

class ContactsDetail: UIViewController {

    @IBOutlet weak var tfPersonName: UITextField!
    @IBOutlet weak var tfPersonTel: UITextField!
    var contact: Contacts?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let k = contact {
            tfPersonName.text = k.person_name
            tfPersonTel.text = k.person_tel
        }
    }
    @IBAction func buttonUpdate(_ sender: Any) {
        if let pa = tfPersonName.text, let pt = tfPersonTel.text, let p = contact {
            update(person_name: pa, person_tel: pt, person_id: p.person_id!)
        }
    }
    func update(person_name:String,person_tel:String,person_id:Int) {
        print("Person Registry : \(person_id) ---- \(person_name) ----  \(person_tel)")
    }
}
