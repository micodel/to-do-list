//
//  SecondViewController.swift
//  To Do List
//
//  Created by Michael Hamel on 7/26/14.
//  Copyright (c) 2014 Michael Hamel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        // Tells keyboard to close upon click/push of keyboards return button.
        textField.resignFirstResponder()
        // Tells controller the text fields should return text upon submit button.
        return true
    }


}

