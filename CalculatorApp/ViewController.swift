//
//  ViewController.swift
//  CalculatorApp
//
//  Created by İrfan Behic Tırpancı on 10.01.2024.
//

import UIKit

class ViewController: UIViewController {
//    firstNumber, secondNumber, operator, haveResult, resultNumber, numAfterResult
    
    var firstNumber     : String = ""
    var secondNumber    : String = ""
    var operation       : String = ""
    var haveResult      : Bool   = false
    var resultNumber    : String = ""
    var numAfterResult  : String = ""

    @IBOutlet weak var numOnScreen: UILabel!
    @IBOutlet var calcButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func numPressed(_ sender: UIButton) { //"" + "1" = 1
        if operation == "" {
            firstNumber += String(sender.tag)
            numOnScreen.text = firstNumber
        }
        else if operation != "" && !haveResult {
            secondNumber += String(sender.tag)
            numOnScreen.text = secondNumber
        }
        else if operation != "" && haveResult {
            numAfterResult += String(sender.tag)
            numOnScreen.text = numAfterResult
        }
    }
    
    func doOPeration() -> Double {
        if operation == "+" {
            if !haveResult {
                haveResult = true
                return Double(firstNumber)! + Double(secondNumber)!
            }
            else {
                return Double(resultNumber)! + Double(numAfterResult)!
            }
        }
        else if operation == "-" {
            if !haveResult {
                haveResult = true
                return Double(firstNumber)! - Double(secondNumber)!
            }
            else {
                return Double(resultNumber)! - Double(numAfterResult)!
            }
        }
        else if operation == "*" {
            if !haveResult {
                haveResult = true
                return Double(firstNumber)! * Double(secondNumber)!
            }
            else {
                return Double(resultNumber)! * Double(numAfterResult)!
            }
        }
        else if operation == "/" {
            if !haveResult {
                haveResult = true
                return Double(firstNumber)! / Double(secondNumber)!
            }
            else {
                return Double(resultNumber)! / Double(numAfterResult)!
            }
        }
        return 0
    }
    @IBAction func clear(_ sender: UIButton) {
        firstNumber      = ""
        secondNumber     = ""
        operation        = ""
        haveResult       = false
        resultNumber     = ""
        numAfterResult   = ""
        numOnScreen.text = ""
    }
    @IBAction func add(_ sender: UIButton) {
        operation = "+"
        updateScreenWithNumber(firstNumber,secondNumber, andOperator: "+")
    }
    @IBAction func subtract(_ sender: UIButton) {
        operation = "-"
        updateScreenWithNumber(firstNumber,secondNumber, andOperator: "-")
    }
    @IBAction func multiply(_ sender: UIButton) {
        operation = "*"
        updateScreenWithNumber(firstNumber,secondNumber, andOperator: "*")
    }
    @IBAction func divide(_ sender: UIButton) {
        operation = "/"
        updateScreenWithNumber(firstNumber,secondNumber, andOperator: "/")
    }
    func updateScreenWithNumber(_ number: String,_ number1: String, andOperator operationSymbol: String) {
        numOnScreen.text = "\(number) \(operationSymbol) \(number1) "
    }
    
    @IBAction func equals(_ sender: UIButton) {
        resultNumber = String(doOPeration())
        numOnScreen.text = resultNumber
        numAfterResult = ""
    }
}

