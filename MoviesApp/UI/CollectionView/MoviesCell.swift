//
//  MoviesCell.swift
//  MoviesApp
//
//  Created by İrfan Behic Tırpancı on 7.02.2024.
//

import UIKit

protocol CellProtocol {
    func addToCart(indexPath:IndexPath) 
}
class MoviesCell: UICollectionViewCell {
    
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var imageViewMovie: UIImageView!
    
    var cellProtocol: CellProtocol?
    var indexPath: IndexPath?
    
    
    @IBAction func buttonAddToCart(_ sender: Any) {
        cellProtocol?.addToCart(indexPath: indexPath!)
    }
}
