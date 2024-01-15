//
//  ViewController.swift
//  ContactsApp
//
//  Created by İrfan Behic Tırpancı on 12.01.2024.
//

import UIKit

class MainPage: UIViewController {

    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var contactsTableView: UITableView!
//    veri kümesi gerekiyor.
    var contactsList = [Contacts]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self //self mainpage i delegate UISearchdelegatei temsil ediyor.
        contactsTableView.delegate = self // en altta yazdığımız fonksiyonları bağlıyoruz
        contactsTableView.dataSource = self
        let k1 = Contacts(person_id: 1, person_name: "Behic", person_tel: "8349532423")
        let k2 = Contacts(person_id: 2, person_name: "Lelo", person_tel: "4530987852")
        let k3 = Contacts(person_id: 3, person_name: "Thranduil", person_tel: "0928734872")
        contactsList.append(k1)
        contactsList.append(k2)
        contactsList.append(k3)
    }
    override func viewWillAppear(_ animated: Bool) {
        print("Returned to Mainpage")
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
extension MainPage: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsList.count // Kaç satır olacağını dinamik belirliyoruz.
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = contactsList[indexPath.row] // verileri sıra ile ver diyoruz.
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell") as! ContactsCell
        
        cell.labelPersonName.text = contact.person_name
        cell.labelPersonTel.text = contact.person_tel

        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = contactsList[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: contact)
//        Son seçilen hücrenin geri dönüldüğünde hala seçili olarak gözükmesini engeller.
        tableView.deselectRow(at: indexPath, animated: true)
    }
//    Kaydırma ile ilgili işlemi yapacağımız altyapıyı sunuyor.
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){
            contextualAction,view,bool in
//            Delete e bastığımızda bize kişi                   fnesnesini verecek
            let contact = self.contactsList[indexPath.row]
//            Sil e basınca çıkacak olan alert i                tanımlıyoruz
            let alert = UIAlertController(title: "Deletion", message: "Should \(contact.person_name!) be deleted ?", preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            alert.addAction(cancelAction)
            
            let yesAction = UIAlertAction(title: "Yes", style: .destructive) { action in
                print("Delete Person : \(contact.person_id!)")
                
            }
            alert.addAction(yesAction)
            self.present(alert, animated: true)
            
        }
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
}

