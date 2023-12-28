//
//  PageY.swift
//  CaseStudy4
//
//  Created by İrfan Behic Tırpancı on 28.12.2023.
//

import UIKit

class PageY: UIViewController {

    @IBOutlet weak var labelPageY: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonGoToMainPage(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
        
    }
    
}
