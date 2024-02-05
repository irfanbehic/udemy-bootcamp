//
//  Products.swift
//  ProductsApp
//
//  Created by İrfan Behic Tırpancı on 31.01.2024.
//

import Foundation

class Products {
    var name: String?
    var id: Int
    var image: String?
    var price: Int?
    

    init(name:String,id:Int,image:String,price:Int) {
        self.id = id
        self.name = name
        self.image = image
        self.price = price
    }
}
