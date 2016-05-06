//
//  ViewController.swift
//  section5_app_Weather App
//
//  Created by Anuradha Chaturvedi on 5/5/16.
//  Copyright © 2016 anuchaturvedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var city: UITextField!
    
    @IBOutlet var weatherResult: UILabel!
    
    
    func showError()
    {
        weatherResult.text = "Was not able to find weather  for " + city.text! + ". Please try again."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func findTheWeather(sender: AnyObject) {
        
        if city.text == nil || (city.text?.isEmpty)!
        {
            weatherResult.text = ""
        }
        else {
            
            let url = NSURL(string: "http://www.weather-forecast.com/locations/" + city.text!.stringByReplacingOccurrencesOfString(" ", withString: "-") + "/forecasts/latest")
            
            if url != nil
            {
                let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: {
                    (data, response, error) -> Void in
                    
                    var urlError = false
                    
                    var weather = ""
                    
                    if error == nil{
                        
                        let urlContent = NSString(data: data!, encoding: NSUTF8StringEncoding) as NSString!
                        
                        // print(urlContent)
                        
                        var urlContentArray = urlContent.componentsSeparatedByString("<span class=\"phrase\">")
                        
                        
                        if urlContentArray.count > 1 {
                            
                            var weatherArray = urlContentArray[1].componentsSeparatedByString("</span>")
                            
                            weather = weatherArray[0] as String
                            
                            weather = weather.stringByReplacingOccurrencesOfString("&deg;", withString: "º")
                            
                            //print(urlContentArray[1])
                        }
                        else {
                            urlError = true
                        }
                        
                    }
                    else {
                        urlError = true
                    }
                    
                    dispatch_async(dispatch_get_main_queue(), {
                        if urlError{
                            self.showError()
                        }
                        else{
                            self.weatherResult.text = weather;
                        }
                    })
                })
                
                task.resume()
            }
            else {
                self.showError()
            }
        }
    }

}

