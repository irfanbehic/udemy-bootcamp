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
        
        let design = UICollectionViewFlowLayout()
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        design.minimumInteritemSpacing = 10
        design.minimumLineSpacing = 10
        
//        10 x 10 x 10 total aboşluk 30 olacak
        let screenWidth = UIScreen.main.bounds.width
        let itemWidth = (screenWidth - 30) / 2 // 2 ye bölmemizin sebebi her satırda 2 adet film göstermek
        design.itemSize = CGSize(width: itemWidth, height: itemWidth * 1.6)
        moviesCollectionView.collectionViewLayout = design
    }
}

extension MainPage: UICollectionViewDelegate,UICollectionViewDataSource,CellProtocol {
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
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let movie = moviesList[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: movie)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let movie = sender as? Movies {
                let locationVC = segue.destination as! DetailPage
                locationVC.movie = movie
            }
        }
    }
    func addToCart(indexPath: IndexPath) {
        let movie = moviesList[indexPath.row]
        print("\(movie.name!) sepete eklendi.")
    }
}
