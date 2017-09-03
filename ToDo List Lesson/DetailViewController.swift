//
//  DetailViewController.swift
//  ToDo List Lesson
//
//  Created by Joe Crescenzi on 9/2/17.
//  Copyright © 2017 Joe Crescenzi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var myPreviousVC = ToDoListTableViewController()
    var selectedToDo : ToDoCoreData?
    
    @IBOutlet weak var DescriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        DescriptionLabel.text = selectedToDo?.name
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var MarkCompletedButtonTapped: UIButton!
    
    @IBAction func CompletButtonTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            if let theSelectedToDo = selectedToDo {
                context.delete(theSelectedToDo)
                try? context.save()
                navigationController?.popViewController(animated: true)
            }
        
        
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
