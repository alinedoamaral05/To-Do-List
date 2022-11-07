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
    
    @IBAction func taskNameTextField(_ sender: UITextField) {
    }
    
    @IBAction func taskDescriptionTextField(_ sender: UITextField) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        taskView = addTask()
    }

    func addTask() -> [NewTask] {
        return [
        NewTask(taskName: "Clean my room", taskDescription: "Put garbage out, swipe with broom")
        ]
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskView.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TaskCell
        cell.setNewTask(taskView[indexPath.row])
        return cell
    }
    
}

