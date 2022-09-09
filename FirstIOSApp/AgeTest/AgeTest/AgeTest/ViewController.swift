//
//  ViewController.swift
//  AgeTest
//
//  Created by Roy Welborn on 7/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func ageButtonClicked(_ sender: Any)
    {
        print("Button Clicked")
        
        if let age = textField.text
        {
            resultLabel.text = "You said you were \(age) years old!";
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

