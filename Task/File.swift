//
//  File.swift
//  Task
//
//  Created by Aaron Eliason on 4/13/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import UIKit

class Task {
    var name: String
    var notes: String?
    var dueDate: NSDate?
    var isComplete: Bool
    
    init(name: String, notes: String?, dueDate: NSDate?, isComplete: Bool) {
        self.name = name
        self.notes = notes
        self.dueDate = dueDate
        self.isComplete = isComplete
    }
}
