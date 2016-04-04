//
//  ViewController.swift
//  interfaceBuilder
//
//  Created by Anuradha Chaturvedi on 4/3/16.
//  Copyright © 2016 anuchaturvedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myLabel: UILabel!

    @IBAction func myButton(sender: UIButton) {
    
        myLabel.text = "It worked."
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        print("Hello World!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

