//
//  ViewController.swift
//  FirstApp
//
//  Created by Roy Welborn on 10/13/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("Hello Werodl")
    }

    @IBAction func changeButtonClick(_ sender: UIButton) {
        
        imageView.image = UIImage(named: "Picture2")
    }
    
}

