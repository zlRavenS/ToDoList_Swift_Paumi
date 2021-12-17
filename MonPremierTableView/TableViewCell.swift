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
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myTrash: UIButton!
    @IBOutlet weak var myPhoto: UIImageView!
    @IBOutlet weak var myCapture: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
