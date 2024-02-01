//
//  ViewController.swift
//  ProductsApp
//
//  Created by İrfan Behic Tırpancı on 26.01.2024.
//

import UIKit

class MainPage: UIViewController {

    @IBOutlet weak var productsTableView: UITableView!
    var productsList = [Products]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsTableView.delegate = self
        productsTableView.dataSource = self
        
        let prd1 = Products(name: "Macbook Pro 14", id: 1, image: "bilgisayar", price: 2500)
        let prd2 = Products(name: "Rayban Club Master", id: 2, image: "gozluk", price: 200)
        let prd3 = Products(name: "Sony ZX Series", id: 3, image: "kulaklik", price: 400)
        let prd4 = Products(name: "Giorgio Armani", id: 4, image: "parfum", price: 500)
        let prd5 = Products(name: "Casio X Series", id: 5, image: "saat", price: 700)
        let prd6 = Products(name: "Dyson V8", id: 6, image: "supurge", price: 1000)
        let prd7 = Products(name: "iPhone 13 ", id: 7, image: "telefon", price: 1200)
        
        productsList.append(prd1)
        productsList.append(prd2)
        productsList.append(prd3)
        productsList.append(prd4)
        productsList.append(prd5)
        productsList.append(prd6)
        productsList.append(prd7)
        
        productsTableView.separatorColor = UIColor(white: 0.95, alpha: 1)

    }

}

extension MainPage: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsList.count // ürünlerin size ı ne kadarsa o kadar satır göster
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let product = productsList[indexPath.row] // Yukarıdaki verileri sıra ile alma işlemini yapar.
        let cell = tableView.dequeueReusableCell(withIdentifier: "productsCell") as! ProductsCell
        
        cell.imageViewProduct.image = UIImage(named: product.image!)
        cell.labelProductName.text = product.name
        cell.labelProductPrice.text = "\(product.price!) $"
        
        cell.backgroundColor = UIColor(white: 0.95, alpha: 1)
        cell.cellBackground?.layer.cornerRadius = 10
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let product = productsList[indexPath.row]
        let deleteAction = UIContextualAction(style:.destructive, title: "Delete") {
            contextualAction,view,bool in
            print("\(product.name!) deleted.")
        }
        let editAction = UIContextualAction(style:.normal, title: "Edit") {
            contextualAction,view,bool in
            print("\(product.name!) edited.")
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction,editAction])
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = productsList[indexPath.row]
//        print("\(product.name!) choosed")
        performSegue(withIdentifier: "toDetail", sender: product)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let product = sender as? Products {
                let destinationVC = segue.destination as! DetailPage
                destinationVC.product = product
            }
        }
    }
    
}

