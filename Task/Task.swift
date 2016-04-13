//
//  File.swift
//  Task
//
//  Created by Aaron Eliason on 4/13/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation


class Task: NSCoding {
    private let nameKey = "name"
    private let notesKey = "notes"
    private let dueDateKey = "dueDate"
    private let completeKey = "isComplete"
    
    
    var name: String
    var notes: String?
    var dueDate: NSDate?
    var isComplete: Bool
    
    init(name: String, notes: String? = nil, dueDate: NSDate? = nil) {
        self.name = name
        self.notes = notes
        self.dueDate = dueDate
        self.isComplete = false
        
    }
    
    @objc required init?(coder aDecoder: NSCoder) {
        guard let name = aDecoder.decodeObjectForKey(nameKey) as? String else {
            
            self.name = ""
            self.notes = ""
            self.isComplete = false
            return nil
        }
        
        self.name = name
        self.notes = aDecoder.decodeObjectForKey(notesKey) as? String
        self.dueDate = aDecoder.decodeObjectForKey(dueDateKey) as? NSDate
        self.isComplete = aDecoder.decodeBoolForKey(completeKey)
    }
    
    @objc func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.name, forKey: nameKey)
        aCoder.encodeObject(self.notes, forKey: notesKey)
        aCoder.encodeObject(self.dueDateKey, forKey: dueDateKey)
        aCoder.encodeObject(isComplete, forKey: completeKey)
    }
    
     func isEqual(object: AnyObject?) -> Bool{
        if let rhs = object as? Task {
            return (self.name == rhs.name) && (self.notes == rhs.notes) && (self.isComplete == rhs.isComplete)
        } else {
            return false
        }
    }
    
    
}

func ==(lhs: Task, rhs: Task) -> Bool {
    return (lhs.name == rhs.name) && (lhs.notes == rhs.notes) && (lhs.isComplete == rhs.isComplete)
}
