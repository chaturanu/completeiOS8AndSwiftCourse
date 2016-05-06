//
//  ViewController.swift
//  section6_animations
//
//  Created by Anuradha Chaturvedi on 5/5/16.
//  Copyright © 2016 anuchaturvedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var frameNum = 1
    
    @IBOutlet var singingKanye: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func makeKanyeSing(sender: AnyObject)
    {
        if(frameNum == 24) {
            frameNum = 0
        }
        
        frameNum += 1
        
        singingKanye.image = UIImage(named: "frame" + String(frameNum) + ".png")
    }
}

