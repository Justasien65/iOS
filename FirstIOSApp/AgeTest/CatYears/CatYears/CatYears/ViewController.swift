//
//  ViewController.swift
//  CatYears
//
//  Created by Roy Welborn on 7/28/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var AgeTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var catAge: Int?
    var humanAge: Int?
    
    @IBAction func goButton(_ sender: Any)
    {
        print("Button Clicked")
        catAge = Int(AgeTextField.text ?? "")
        if catAge != nil
        {
            let humanAge = ((catAge ?? 0) * 7);
            resultLabel.text = "Your Cat is \(humanAge.description) in Human Years";
        }
    else
    {
        resultLabel.text = "No Age was Entered!"
    }
    }
    
    @IBOutlet weak var kittenImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

