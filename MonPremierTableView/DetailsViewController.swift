//
//  DetailsViewController.swift
//  MonPremierTableView
//
//  Created by Paul Ledoux on 09/12/2021.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var myToDoList: Pokemon?


    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myDetails: UILabel!
    @IBOutlet weak var myPhoto: UIImageView!
    @IBOutlet weak var myNumero: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let data = myToDoList {
            myPhoto.image = UIImage(named: data.photo)
            myName.text = data.nom
            myDetails.text = data.details
            myNumero.text = data.numero
            
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
