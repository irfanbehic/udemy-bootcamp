//
//  ViewController.swift
//  MoviesApp
//
//  Created by İrfan Behic Tırpancı on 7.02.2024.
//

import UIKit

class MainPage: UIViewController {

    @IBOutlet weak var moviesCollectionView: UICollectionView!
    var moviesList = [Movies]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moviesCollectionView.delegate = self
        moviesCollectionView.dataSource = self
        
        let mov1 = Movies(id: 1, name: "Django", image: "django", price: 65)
        let mov2 = Movies(id: 2, name: "Inception", image: "inception", price: 75)
        let mov3 = Movies(id: 3, name: "Interstellar", image: "interstellar", price: 100)
        let mov4 = Movies(id: 4, name: "The Hateful Eight", image: "thehatefuleight", price: 60)
        let mov5 = Movies(id: 5, name: "The Pianist", image: "thepianist", price: 50)
        let mov6 = Movies(id: 6, name: "Anadoluda", image: "anadoluda", price: 45)
        moviesList.append(mov1)
        moviesList.append(mov2)
        moviesList.append(mov3)
        moviesList.append(mov4)
        moviesList.append(mov5)
        moviesList.append(mov6)
    }
}

extension MainPage: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        moviesList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let movie = moviesList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "moviesCell", for: indexPath) as! MoviesCell
        
        cell.imageViewMovie.image = UIImage(named: movie.image!)
        cell.labelPrice.text = "\(movie.price!) $"
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        cell.layer.cornerRadius = 10.0
        
        
        return cell
    }
}
