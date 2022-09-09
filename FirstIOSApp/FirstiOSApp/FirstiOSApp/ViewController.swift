//
//  ViewController.swift
//  FirstiOSApp
//
//  Created by Roy Welborn on 6/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func clickMeButtonClick(_ sender: Any)
    {
        print("Button Clicked");
        
        if let name = textField.text
        {
        clickLabel.text = "Hello " + name;
        }
        else
        {
            clickLabel.text = "No Name enterd!"
        }
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var clickLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Rob")
    }


}

