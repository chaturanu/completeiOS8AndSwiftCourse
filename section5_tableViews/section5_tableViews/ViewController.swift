//
//  ViewController.swift
//  section5_tableViews
//
//  Created by Anuradha Chaturvedi on 4/15/16.
//  Copyright © 2016 anuchaturvedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    var cellContent = ["apples", "bananas", "pears", "kiwi"]
    
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
        return cellContent.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
    }
}

