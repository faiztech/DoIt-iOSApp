//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Mohammed Faizuddin on 9/18/17.
//  Copyright © 2017 Mohammed Faizuddin. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    @IBAction func addTapped(_ sender: Any) {
        
        let task = Task()
        task.name = taskNameField.text!
        task.important = importantSwitch.isOn
        
        print(task.name)
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
