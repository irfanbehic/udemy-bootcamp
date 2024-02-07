//
//  DetailPage.swift
//  ProductsApp
//
//  Created by İrfan Behic Tırpancı on 31.01.2024.
//

import UIKit

class DetailPage: UIViewController {

    @IBOutlet weak var imageViewProduct: UIImageView!
    @IBOutlet weak var labelProductPrice: UILabel!
    var product: Products?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let prd = product {
            self.navigationItem.title = product?.name
            imageViewProduct.image = UIImage(named: prd.image!)
            labelProductPrice.text = "\(prd.price!)"
        }

    }
    
    @IBAction func buttonAddToCart(_ sender: Any) {
        
        if let prd = product {
            print("Detail Page : \(prd.name!) added to cart")

        }
        
    }
    
}
