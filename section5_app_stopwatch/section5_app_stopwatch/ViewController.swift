//
//  ViewController.swift
//  section5_app_stopwatch
//
//  Created by Anuradha Chaturvedi on 4/14/16.
//  Copyright © 2016 anuchaturvedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer  = NSTimer();
    var count = 0
    
    @IBOutlet var time: UILabel!
    
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        
        count = 0
        
        time.text = "\(count)"
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func play(sender: AnyObject) {
        timer  = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.updateTime), userInfo: nil, repeats: true)
        
    }
    
    func updateTime()
    {
        count += 1
        
        time.text = "\(count)"
    }
    
    @IBOutlet var play: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

