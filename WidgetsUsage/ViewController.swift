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
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelSlider: UILabel!
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSlider.text = String(Int(slider.value))
        labelStepper.text = String(Int(stepper.value))
        activityIndicator.isHidden = true //uygulama çalıştığında gizlensin
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
        let choosenCategory = segmentedControl.titleForSegment(at: choosenIndex)
        print("Segmented Status : \(choosenCategory!)")
        print("Slider Status : \(slider.value)")
        print("Stepper Status : \(stepper.value)")
    }
    
    @IBAction func segmentedControlChange(_ sender: UISegmentedControl) {
        let choosenIndex = sender.selectedSegmentIndex
        
        let choosenCategory = sender.titleForSegment(at: choosenIndex)
        print("Seçim : \(choosenCategory!)")
    }
    @IBAction func sliderChange(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))
    }
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        labelStepper.text = String(Int(sender.value))
    }
    
    @IBAction func buttonStart(_ sender: Any) {
//        Görünür yap ve animasyonu başlat
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    @IBAction func buttonStop(_ sender: Any) {
//        Görünmez yap ve animasyonu durdur
        activityIndicator.isHidden = true
        activityIndicator.stopAnimating()
    }
    
}

