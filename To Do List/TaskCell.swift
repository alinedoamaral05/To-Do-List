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
    
    var deleteButton: (() -> ())!
    
    @IBAction func trashbutton(_ sender: UIButton, tableView: UITableView) {
        deleteButton?()
//            var superview = sender.superview
//            while let view = superview, !(view is UITableViewCell) {
//                superview = view.superview
//            }
//            guard let cell = superview as? UITableViewCell else { return }
//            guard let indexPath = tableView.indexPath(for: cell) else { return }
//        taskView.remove(at: indexPath.row)
//            tableView.reloadData()
        
    }
    func setNewTask(_ task: NewTask) {
        taskNameLabel.text = task.taskName
        taskDescriptionLabel.text = task.taskDescription
        
    }
    
    func setDeleteButton(_ deleteHandler: @escaping () -> ()) {
        deleteButton = deleteHandler
    }
    
    
}
