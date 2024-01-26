//
//  PageX.swift
//  CaseStudy4
//
//  Created by İrfan Behic Tırpancı on 28.12.2023.
//

import UIKit

class PageX: UIViewController {

    @IBOutlet weak var labelPageX: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonGoToX(_ sender: Any) {
        performSegue(withIdentifier: "TransitionXToY", sender: nil)
    }
}
