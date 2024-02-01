//
//  ProductsCell.swift
//  ProductsApp
//
//  Created by İrfan Behic Tırpancı on 31.01.2024.
//

import UIKit

class ProductsCell: UITableViewCell {

    @IBOutlet weak var cellBackground: UIView!
    @IBOutlet weak var imageViewProduct: UIImageView!
    @IBOutlet weak var labelProductName: UILabel!
    @IBOutlet weak var labelProductPrice: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

     
    }
    
    @IBAction func buttonAddToCart(_ sender: Any) {
    }
    
}
