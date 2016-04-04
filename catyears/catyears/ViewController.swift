//
//  ViewController.swift
//  catyears
//
//  Created by Anuradha Chaturvedi on 4/3/16.
//  Copyright © 2016 anuchaturvedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var age:
    UITextField!
    @IBOutlet var ageResult: UILabel!
    
    @IBAction func findAge(sender: AnyObject){
        //print(age.text)
 
        if age.text == nil
        {
            ageResult.text = "Please enter a valid age"
        }
        else
        {
            let enteredAge = Int(age.text!)
            let computedAge = enteredAge! * 7
            ageResult.text = "Your cat is " + String(computedAge) + " in cat years."
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

