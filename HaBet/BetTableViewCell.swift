//
//  BetTableViewCell.swift
//  HaBet
//
//  Created by Sujit Molleti on 2/23/20.
//  Copyright © 2020 Sujit Molleti. All rights reserved.
//

import UIKit

class BetTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var challengeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
