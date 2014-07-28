//
//  FirstViewController.swift
//  To Do List
//
//  Created by Michael Hamel on 7/26/14.
//  Copyright (c) 2014 Michael Hamel. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var taskTable: UITableView!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // When returning to view...
    override func viewWillAppear(animated: Bool) {
        taskTable.reloadData();
    }
    
    
    // Required functions from UITableViewDataSource
    // Can be found by holding command key and clicking inheritance above.
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        // Returns number of tasks in task array.
        return taskMgr.tasks.count
    
    }
    // This function will look to execute the x number of times returned in the function above.
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        // Style below gives the title text with smaller text below.
        // reuseIdentifier is text that gets used if nothing provided.
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        cell.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel.text = taskMgr.tasks[indexPath.row].desc
        
        
        // Returns current iteration cell to list.
        return cell
    }
    
    // Function to delete a task from the list.
    // Uses built in functionality of UITableViewDelegate.
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        
        if(editingStyle == UITableViewCellEditingStyle.Delete) {
            taskMgr.tasks.removeAtIndex(indexPath.row);
            taskTable.reloadData()
        }
    }


}

