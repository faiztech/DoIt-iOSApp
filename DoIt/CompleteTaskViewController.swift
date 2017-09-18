//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Mohammed Faizuddin on 9/18/17.
//  Copyright © 2017 Mohammed Faizuddin. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var task = Task()
    var previousVC = ViewController()


    @IBOutlet weak var taskLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(task.important)
        {
            taskLabel.text = "!! \(task.name)"
            
        }else{
            taskLabel.text  = task.name
        }

        // Do any additional setup after loading the view.
    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
  

}
