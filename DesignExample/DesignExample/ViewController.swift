//
//  ViewController.swift
//  DesignProject
//
//  Created by İrfan Behic Tırpancı on 12.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Mental Health"
        
        let appearence = UINavigationBarAppearance()
        appearence.backgroundColor = UIColor(named: "backgroundColor")
        appearence.titleTextAttributes = [.foregroundColor: UIColor(named: "textColor3")!,
                                          .font: UIFont(name: "Avenir 85 Heavy", size: 22)! ]
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = appearence
        navigationController?.navigationBar.compactAppearance  = appearence
        navigationController?.navigationBar.scrollEdgeAppearance = appearence



    }


}


