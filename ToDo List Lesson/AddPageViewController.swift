//
//  AddPageViewController.swift
//  ToDo List Lesson
//
//  Created by Joe Crescenzi on 9/2/17.
//  Copyright © 2017 Joe Crescenzi. All rights reserved.
//

import UIKit

class AddPageViewController: UIViewController {

    var myPreviousVC = ToDoListTableViewController()
    
    @IBOutlet weak var TitleTextBox: UITextField!
    
    @IBOutlet weak var IsImportantToggle: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func AddButtonWasTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            let toDo = ToDoCoreData(entity: ToDoCoreData.entity(), insertInto: context)

            if let NewTitle = TitleTextBox.text {
                if NewTitle != "" {
                    toDo.isImportant = IsImportantToggle.isOn
                    toDo.name = NewTitle
                    // myPreviousVC.tableView.reloadData()
                    navigationController?.popViewController(animated: true)
                    
                }
            try? context.save()
            
            }
        }
        
    }

}
