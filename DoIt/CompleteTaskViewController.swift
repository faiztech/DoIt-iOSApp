//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Mohammed Faizuddin on 9/18/17.
//  Copyright © 2017 Mohammed Faizuddin. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var task : Task? = nil


    @IBOutlet weak var taskLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(task!.important)
        {
            taskLabel.text = "!! \(String(describing: task!.name!))"
            
        }else{
            taskLabel.text  = task!.name!
        }

        // Do any additional setup after loading the view.
    }

    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

        //deleting
        context.delete(task!)
        
        //saving into coredata
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //pop back
        navigationController!.popViewController(animated: true)
    }
  

}
