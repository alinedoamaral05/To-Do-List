//
//  TaskCell.swift
//  To Do List
//
//  Created by Aline do Amaral on 06/11/22.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var taskNameLabel: UILabel!
    
    @IBOutlet weak var taskDescriptionLabel: UILabel!
   
    @IBOutlet weak var checkBoxButton: UIButton!
    
    @IBAction func trashbutton(_ sender: UIButton) {
        


        
    }
    
    func setNewTask(_ task: NewTask) {
        taskNameLabel.text = task.taskName
        taskDescriptionLabel.text = task.taskDescription
        
    }
    
    
    
}
