//
//  ViewController.swift
//  MonPremierTableView
//
//  Created by d0m on 30/11/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var myData = [ToDoList]()
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 1...50 {
            
            myData.append(ToDoList(nom: "Tâche n°" + String(i),
                                 details: "Description de la tâche n°" + String(i)))
        }
        
        myTableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCell
        cell.myName.text = myData[indexPath.row].nom
        cell.myDetails.text = myData[indexPath.row].details
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Find the row of the cell
            let row = indexPath.row
            myData.remove(at: row)
            myTableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "details" {
            let detailsViewController = segue.destination as! DetailsViewController
            let myIndexPath = myTableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailsViewController.myToDoList = myData[row]
        }
    }
    
    
    @IBAction func unwindToMainView(_ unwindSegue: UIStoryboardSegue) {
        let addViewController = unwindSegue.source as! AddViewController
        if unwindSegue.identifier == "cancel" {
            addViewController.dismiss(animated: true, completion: nil)
        }
        if unwindSegue.identifier == "save" {
            if let myNom = addViewController.myTitle.text, let myDetails = addViewController.myDescription.text {
                let new_data = ToDoList(nom: myNom,
                                      details: myDetails)
                myData.append(new_data)
                myTableView.reloadData()
            }
        }
        // Use data from the view controller which initiated the unwind segue
    }


}

