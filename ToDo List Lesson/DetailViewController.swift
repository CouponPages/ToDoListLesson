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
    var selectedToDo = ToDoClass()

    @IBOutlet weak var DescriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        DescriptionLabel.text = selectedToDo.Name
        // Do any additional setup after loading the view.
    }

    
    
    @IBOutlet weak var MarkCompletedButtonTapped: UIButton!
    
    @IBAction func CompletButtonTapped(_ sender: Any) {
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
