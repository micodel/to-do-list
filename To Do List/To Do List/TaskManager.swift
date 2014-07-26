//
//  TaskManager.swift
//  To Do List
//
//  Created by Michael Hamel on 7/26/14.
//  Copyright (c) 2014 Michael Hamel. All rights reserved.
//

import UIKit

// Initializes an instance of the TaskManager object below.
// VariableName:variableType = ClassObject()
var taskMgr:TaskManager = TaskManager()

// Defines constructor for a task.
struct task {
    // Gives the name attribute for a task the default value of 'no name'.
    var name = "no name"
    var desc = "no description"
}

class TaskManager: NSObject {
    
    // Initializes an array to contain all (added) tasks.
    var tasks = task[]()
    
    // Function to add a task. Accepts two parameters, name and description.
    func addTask(name: String, desc: String){
        // Appends a new task object to the task array.
        tasks.append(task(name: name, desc: desc))
    }
   
}
