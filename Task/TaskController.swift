//
//  TaskController.swift
//  Task
//
//  Created by Aaron Eliason on 4/13/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class TaskController {
    
    static let sharedInstance = TaskController()
    
    
    
    var tasks: [Task] = []
    
    var completedTasks: [Task] {
        return tasks.filter({$0.isComplete})
    }
    
    var incompletedTasks: [Task] {
        return tasks.filter({!$0.isComplete})
    }
    
    func addTask(task: Task) {
        tasks.append(tasks)
    }
    
    func removeTask(task: Task) {
        if let index = self.tasks.indexOf(task) {
            tasks.removeAtIndex(index)
        }
    }
}
