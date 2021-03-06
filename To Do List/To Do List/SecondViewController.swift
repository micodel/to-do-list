//
//  SecondViewController.swift
//  To Do List
//
//  Created by Michael Hamel on 7/26/14.
//  Copyright (c) 2014 Michael Hamel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    // The exclaimation point (!) states we are initializing an object that does not exist yet.
    @IBOutlet var taskName:UITextField!
    @IBOutlet var taskDesc:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Events
    // Executes block when new task submit button is clicked.
    @IBAction func submitTask(sender: UIButton){
        taskMgr.addTask(taskName.text, desc: taskDesc.text);
        // Hides keyboard.
        self.view.endEditing(true)
        // Clears text fields after submission.
        taskName.text = ""
        taskDesc.text = ""
        // Brings users back to first page (list of all tasks).
        self.tabBarController.selectedIndex = 0;
    }
    
    
    // iOS Touch Functions.
    // Function to close keyboard when user clicks outside of text field.
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    // UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        // Tells keyboard to close upon click/push of keyboards return button.
        textField.resignFirstResponder()
        // Tells controller the text fields should return text upon submit button.
        return true
    }


}

