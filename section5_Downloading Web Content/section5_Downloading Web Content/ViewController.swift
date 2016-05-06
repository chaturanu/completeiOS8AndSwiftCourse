//
//  ViewController.swift
//  section5_Downloading Web Content
//
//  Created by Anuradha Chaturvedi on 5/5/16.
//  Copyright © 2016 anuchaturvedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://anuchaturvedi.com")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!){
            (data, response, error) in
            
            
            if error == nil{
                let urlContent = NSString(data: data!, encoding: NSUTF8StringEncoding)
               
                dispatch_async(dispatch_get_main_queue())
                {
                self.webView.loadHTMLString(urlContent! as String, baseURL: nil)
                }
            }
        }
        
        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

