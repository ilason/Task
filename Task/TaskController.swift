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
    
    var mockTasks: [Task] {
       let sampleTask1 = Task(name: "Go shopping", notes: "At Costco", dueDate: nil)
        let sampleTask2 = Task(name: "Love Mared", notes: "In bed", dueDate: NSDate())
            
//        let sampleTask3 = Task(name: "Go home")
        
        return [sampleTask1, sampleTask2]
    }

    
    

    
    
    var completedTasks: [Task] {
        return tasks.filter({$0.isComplete})
    }
    
    var incompletedTasks: [Task] {
        return tasks.filter({!$0.isComplete})
    }
    init() {
        tasks = mockTasks
    }
    
    func addTask(task: Task) {
        tasks.append(task)
    }
    
    func removeTask(task: Task) {
        if let index = self.tasks.indexOf(task) {
            tasks.removeAtIndex(index)
        }
    }
}
