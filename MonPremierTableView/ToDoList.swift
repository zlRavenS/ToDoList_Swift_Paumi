//
//  ToDoList.swift
//  MonPremierTableView
//
//  Created by Paul Ledoux on 09/12/2021.
//

import UIKit
import Foundation

class ToDoList: NSObject {
    var nom: String
    var details: String
    
    init(nom: String, details: String) {
        self.nom = nom
        self.details = details
    }
}
