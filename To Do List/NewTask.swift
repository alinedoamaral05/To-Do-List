//
//  NewTask.swift
//  To Do List
//
//  Created by Aline do Amaral on 06/11/22.
//

import Foundation
import UIKit



struct NewTask {
    var taskName: String
    var taskDescription: String
    

    init(taskName: String, taskDescription: String) {
        self.taskName = taskName
        self.taskDescription = taskDescription
        
    }
    
}
