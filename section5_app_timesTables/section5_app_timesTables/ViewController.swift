//
//  ViewController.swift
//  section5_app_timesTables
//
//  Created by Anuradha Chaturvedi on 4/15/16.
//  Copyright © 2016 anuchaturvedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var sliderValue: UISlider!
    
    @IBOutlet var table: UITableView!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        
        table.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        {
            let cell = UITableViewCell(style: UITableViewCellStyle.Default
                , reuseIdentifier: "timesTable")
            
            let timesTable = Int(sliderValue.value * 20)
           
            cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
            
            return cell
    }
    
}

