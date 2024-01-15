//
//  ContactsCell.swift
//  ContactsApp
//
//  Created by İrfan Behic Tırpancı on 12.01.2024.
//

import UIKit

class ContactsCell: UITableViewCell {

    @IBOutlet weak var labelPersonTel: UILabel!
    @IBOutlet weak var labelPersonName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
