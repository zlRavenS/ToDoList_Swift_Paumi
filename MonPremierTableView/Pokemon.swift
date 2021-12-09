//
//  ToDoList.swift
//  MonPremierTableView
//
//  Created by Paul Ledoux on 09/12/2021.
//

import UIKit
import Foundation

class Pokemon: NSObject {
    var nom: String
    var numero: String
    var details: String
    var photo: String
    
    init(nom: String, details: String, numero: String, photo: String) {
        self.numero = numero
        self.nom = nom
        self.details = details
        self.photo = photo
    }
}
