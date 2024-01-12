//
//  ViewController.swift
//  ContactsApp
//
//  Created by İrfan Behic Tırpancı on 12.01.2024.
//

import UIKit

class MainPage: UIViewController {

    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self //self mainpage i delegate UISearchdelegatei temsil ediyor.
    }

    @IBAction func buttonDetail(_ sender: Any) {
        
        let contact = Contacts(person_id: 1, person_name: "İrfan", person_tel: "5318340947")
        performSegue(withIdentifier: "toDetail", sender: contact)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let contact = sender as? Contacts {
                let locationVC = segue.destination as! ContactsDetail
                locationVC.contact = contact
            }
        }
    }
}

extension MainPage:UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Search Person : \(searchText)")
    }
    
}

