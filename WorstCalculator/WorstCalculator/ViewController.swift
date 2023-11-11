//
//  ViewController.swift
//  WorstCalculator
//
//  Created by Roy Welborn on 11/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstEditField: UITextField!
    
    @IBOutlet weak var SecondEditField: UITextField!
    
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var multiplyButton: UIButton!
    
    @IBOutlet weak var divideButton: UIButton!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = "And the result is: "
    }


    @IBAction func plusButtonClicked(_ sender: Any) {
        if let firstNumber = Int(FirstEditField.text!) {
            if let secondNumber = Int(SecondEditField.text!) {
                let result = firstNumber + secondNumber
                resultLabel.text = "And the result is: " + result.description
            }
            
        }
    }
        
    
    
    @IBAction func minusButtonClicked(_ sender: Any) {
        if let firstNumber = Int(FirstEditField.text!) {
            if let secondNumber = Int(SecondEditField.text!) {
                let result = firstNumber - secondNumber
                resultLabel.text = "And the result is: " + result.description
            }
            
        }
    }
    
    
    @IBAction func multiplyButtonClicked(_ sender: Any) {
        if let firstNumber = Int(FirstEditField.text!) {
            if let secondNumber = Int(SecondEditField.text!) {
                let result = firstNumber * secondNumber
                resultLabel.text = "And the result is: " + result.description
            }
            
        }
    }
    
    
    @IBAction func divideButtonClicked(_ sender: Any) {
        if let firstNumber = Int(FirstEditField.text!) {
            if let secondNumber = Int(SecondEditField.text!) {
                let result = firstNumber / secondNumber
                resultLabel.text = "And the result is: " + result.description
            }
            
        }
    }
}

