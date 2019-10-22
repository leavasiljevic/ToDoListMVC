//
//  ToDoList.swift
//  ToDoListMVC
//
//  Created by Lea Vasiljevic on 2019-10-17.
//  Copyright © 2019 Lea Vasiljevic. All rights reserved.
//

import UIKit

class ToDoList: UIViewController, AddTask{
    
    @IBOutlet weak var tableView: UITableView!
    
    var tasks: [Task] = []
 
    override func viewDidLoad() {
        super.viewDidLoad()
        tasks = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func addTask(name: String) {
        let task = Task(checkBoxChecked: false, name: name)
        tasks.append(task)
        tableView.reloadData()
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddController
        vc.delegate = self
    }
}

func createArray() -> [Task] {
    
    var tempToDoList: [Task] = []
    
    let task1 = Task(checkBoxChecked: false, name: "proba task 1")
    let task2 = Task(checkBoxChecked: false, name: "proba task 2")
    let task3 = Task(checkBoxChecked: false, name: "proba task 3")
    let task4 = Task(checkBoxChecked: false, name: "proba task 4")
    
    tempToDoList.append(task1)
    tempToDoList.append(task2)
    tempToDoList.append(task3)
    tempToDoList.append(task4)
    
    return tempToDoList
}

extension ToDoList: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let task = tasks[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell") as! ToDoListCell
        cell.setTask(task: task)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
   func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tasks.remove(at: indexPath.row)
            
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .left)
            tableView.endUpdates()
        }
    
    }
}

