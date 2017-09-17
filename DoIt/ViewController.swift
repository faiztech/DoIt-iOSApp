//
//  ViewController.swift
//  DoIt
//
//  Created by Mohammed Faizuddin on 9/17/17.
//  Copyright © 2017 Mohammed Faizuddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks :[Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self

        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if(task.important)
        {
            cell.textLabel?.text = "!! \(task.name)"

        }else{
        cell.textLabel?.text = task.name
        }
        return cell
    }
    
    
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Learn iOS"
        task1.important = false
        
        
        let task2 = Task()
        task2.name = "CS 415 Homework"
        task2.important = true
        
        let task3 = Task()
        task3.name = "CS 331 Homework "
        task3.important = false
        
        return [task1, task2, task3]
    }
    
    
 


}

