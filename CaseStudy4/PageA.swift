//
//  PageA.swift
//  CaseStudy4
//
//  Created by İrfan Behic Tırpancı on 28.12.2023.
//

import UIKit

class PageA: UIViewController {

    @IBOutlet weak var labelPageA: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGoToB(_ sender: Any) {
        performSegue(withIdentifier: "TransitionAToB", sender: nil)
    }
    
}
