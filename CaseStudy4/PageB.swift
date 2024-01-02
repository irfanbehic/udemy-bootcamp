//
//  PageB.swift
//  CaseStudy4
//
//  Created by İrfan Behic Tırpancı on 28.12.2023.
//

import UIKit

class PageB: UIViewController {

    @IBOutlet weak var labelPageB: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGoToY(_ sender: Any) {
        performSegue(withIdentifier: "TransitionBToY", sender: nil)
    }
}
