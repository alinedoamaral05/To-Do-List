//
//  ViewController.swift
//  To Do List
//
//  Created by Aline do Amaral on 06/11/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var taskView: [NewTask] = []

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var taskDescriptionTextField: UITextField!
    
    
    @IBAction func AddTaskButton(_ sender: Any) {
        guard let taskNameText = taskNameTextField.text else { return }
        guard let taskDescriptionText = taskNameTextField.text else { return }
        taskView.append(NewTask(
            taskName: taskNameText,
            taskDescription: taskDescriptionText))
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskView.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TaskCell
        cell.setNewTask(taskView[indexPath.row])
        cell.setDeleteButton(
         {
            self.taskView.remove(at: indexPath.row)
        })
        return cell
    }
    
}

