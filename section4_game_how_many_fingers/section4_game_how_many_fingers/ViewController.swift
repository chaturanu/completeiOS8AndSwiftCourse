//
//  ViewController.swift
//  section4_game_how_many_fingers
//
//  Created by Anuradha Chaturvedi on 4/3/16.
//  Copyright © 2016 anuchaturvedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var number: UITextField!
    
    @IBOutlet var result: UILabel!
    
    
    @IBAction func buttonGuess(sender: AnyObject) {

        
        if number == nil
        {
            result.text = "Enter a number between 0-10."
        }
        else
        {
            var randomNumber:Int = Int(arc4random_uniform(11))

            let num:Int = Int(number.text!)!
            
            if num == randomNumber
            {
                result.text = "You guessed right!"
                randomNumber = Int(arc4random_uniform(11))
                number.text = nil
            }
            else
            {
                result.text = "You guessed wrong. The number was /(randomNumber). Try again!"
            }
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

