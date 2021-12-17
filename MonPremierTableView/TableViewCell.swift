//
//  TableViewCell.swift
//  MonPremierTableView
//
//  Created by Remi Lefaivre on 09/12/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myNumero: UILabel!
    @IBOutlet weak var myTrash: UIButton!
    @IBOutlet weak var myPhoto: UIImageView!
    @IBOutlet weak var myCapture: UILabel!
    @IBAction func myButton(_ sender: UIButton) {
        let currentDateTime = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let dateString = formatter.string(from: currentDateTime)
        
        if sender.isTouchInside {
            sender.setImage(UIImage(named: "pokeball"), for: .normal)
            myCapture.isHidden = false
            myCapture.text! += dateString
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
