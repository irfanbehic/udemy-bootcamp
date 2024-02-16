//
//  DetailPage.swift
//  MoviesApp
//
//  Created by İrfan Behic Tırpancı on 7.02.2024.
//

import UIKit

class DetailPage: UIViewController {

    @IBOutlet weak var labelMoviePrice: UILabel!
    @IBOutlet weak var imageViewMovie: UIImageView!
    @IBOutlet weak var labelMovieName: UILabel!
   
    var movie:Movies?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let f = movie {
            labelMovieName.text = f.name
            imageViewMovie.image = UIImage(named: f.image!)
            labelMoviePrice.text = "\(f.price!) $"
            
        }
        
    }
}
