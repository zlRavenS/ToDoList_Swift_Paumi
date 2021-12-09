//
//  ViewController.swift
//  MonPremierTableView
//
//  Created by Remi Lefaivre on 09/12/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var myData = [Pokemon]()
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var pokemons = ["Arcko","Massko","Jungko","Poussifeu","Galifeu","Brasegali","Gobou","Flobio","Laggron","Medhyèna","Grahyèna","Zigzaton","Linéon","Chenipotte","Armulys","Charmillon","Blindalys","Papinox","Nénupiot","Lombre","Ludicolo","Nénupiot","Pifeuil","Tangalice","Nirondelle","Hélédelle","Goélise","Bekipan","Tarsal","Kirlia","Gardevoir","Arakdo","Maskadra","balignon","Chapignon","Parecool","Vigoroth","Monaflèmit","Abra","Kadabra","Alakazam","Ningale","Ninjask","Munja","Chuchmur","Ramboum","Brouhabam","Makuhita","Hariyama","Possirène"]
        
        
            
        for i in 0...49 {
            if i<9 {
                myData.append(Pokemon(nom: pokemons[i], details: "Description du Pokémon n°" + String(i+1), numero: "#00" + String(i+1), photo: String(i+1)))
            }
            else {
                myData.append(Pokemon(nom: pokemons[i], details: "Description du Pokémon n°" + String(i+1), numero: "#0" + String(i+1), photo: String(i+1)))
            }
        }
        
        
        myTableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCell
        cell.myName.text = myData[indexPath.row].nom
        cell.myNumero.text = myData[indexPath.row].numero
        cell.myPhoto.image = UIImage(named: myData[indexPath.row].photo)
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
            if let myNom = addViewController.myTitle.text, let myDetails = addViewController.myDescription.text, let myNumero = addViewController.myNumber.text{
                let new_data = Pokemon(nom: myNom,
                                        details: myDetails, numero: myNumero, photo: String(1))
                myData.append(new_data)
                myTableView.reloadData()
            }
        }
        // Use data from the view controller which initiated the unwind segue
    }


}

