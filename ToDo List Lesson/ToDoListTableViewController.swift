//
//  ToDoListTableViewController.swift
//  ToDo List Lesson
//
//  Created by Joe Crescenzi on 9/2/17.
//  Copyright © 2017 Joe Crescenzi. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {

    var toDoList : [ToDoClass] = []
    
    func CreateToDos() -> [ToDoClass]
    {
        let item1 = ToDoClass()
        let item2 = ToDoClass()
        let item3 = ToDoClass()
        item1.Name = "Buy Eggs"
        item2.Name = "Finish Class"
        item2.IsImportant = true
        item3.Name = "Buy Cheese"
        
        return [item1, item2, item3]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toDoList = CreateToDos()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #return the number of rows
        return toDoList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        let toDoItem = toDoList[indexPath.row]

        if toDoItem.IsImportant
        {
            cell.textLabel?.text = "❗️" + toDoItem.Name
        }
        else{
            cell.textLabel?.text = toDoItem.Name
        }
        
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let toDoItem = toDoList[indexPath.row]
        performSegue(withIdentifier: "MovetoDetailPage", sender: toDoItem)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddPageViewController{
            addVC.myPreviousVC = self

        }
        
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
     */
    
    
    /*
    //
    // NOTE: Nick asked to delete this... keeping it for reference
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //
    // NOTE: Nick asked to delete this... keeping it for reference
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
     */
}
