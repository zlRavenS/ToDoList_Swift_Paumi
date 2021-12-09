//
//  TableViewCell.swift
//  MonPremierTableView
//
//  Created by d0m on 30/11/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myDetails: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
