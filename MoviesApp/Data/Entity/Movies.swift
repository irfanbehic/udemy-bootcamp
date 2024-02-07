//
//  Movies.swift
//  MoviesApp
//
//  Created by İrfan Behic Tırpancı on 7.02.2024.
//

import Foundation

class Movies {
    
    var id: Int?
    var name: String?
    var image:String?
    var price: Int?
    
    init(id: Int, name: String, image: String, price: Int) {
        self.id = id
        self.name = name
        self.image = image
        self.price = price
    }
}
