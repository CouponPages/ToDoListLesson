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
        
        let MyTodo = ToDoClass()
        MyTodo.IsImportant = IsImportantToggle.isOn
        MyTodo.Name = TitleTextBox.text!
        
        myPreviousVC.toDoList.append(MyTodo)
        myPreviousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
     
     
     override func didReceiveMemoryWarning() {
     super.didReceiveMemoryWarning()
     // Dispose of any resources that can be recreated.
     }
    */

}
