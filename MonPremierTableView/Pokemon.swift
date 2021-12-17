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
    var type1: String
    var type2: String
    var capture: Bool
    var dateCapture : Date?
    
    init(nom: String, details: String, numero: String, photo: String, type1: String, type2: String) {
        self.numero = numero
        self.nom = nom
        self.details = details
        self.photo = photo
        self.type1 = type1
        self.type2 = type2
        self.capture = false
    }
    
    func changeCapture() {
        capture = !capture
        if(capture){
            dateCapture = Date()
        }
        else {
            dateCapture = nil
        }
    }
    
    
}
