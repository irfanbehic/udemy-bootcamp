//
//  ViewController.swift
//  WidgetsUsage
//
//  Created by İrfan Behic Tırpancı on 4.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var textFieldInput: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    butona tıkladığımızda labeldan veriyi alıp textfielda aktarmasını sağlayacağız.
    @IBAction func buttonReceivedData(_ sender: Any) {
        if let receivedData = textFieldInput.text {
            
            labelResult.text = receivedData
        }
        
    }
    
    @IBAction func buttonRawOn(_ sender: Any) {
        imageView.image = UIImage(named: "raw-on")
    }
    
    @IBAction func buttonRawOff(_ sender: Any) {
        imageView.image = UIImage(named: "raw-off")
    }
    
//    switche tıkladığımız zaman özelliğini(true-false) sonuç olarak bize versin
    
    @IBAction func switchChange(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch : ON")
        }
        else {
            print("Switch : OFF")
        }
    }
//    Show butonuna bastığımızda switchin son durumunu söylemesini istiyoruz.
    @IBAction func buttonShow(_ sender: Any) {
        print("Switch Status : \(mSwitch.isOn)")
        let choosenIndex = segmentedControl.selectedSegmentIndex
        _ = segmentedControl.titleForSegment(at: choosenIndex)
        print("Seçim : \(choosenIndex)")
    }
    
    @IBAction func segmentedControlChange(_ sender: UISegmentedControl) {
        let choosenIndex = sender.selectedSegmentIndex
        _ = sender.titleForSegment(at: choosenIndex)
        print("Seçim : \(choosenIndex)")
    }
}

