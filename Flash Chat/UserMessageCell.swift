//
//  UserMessageCell.swift
//  Flash Chat
//
//  Created by Omran Khoja on 3/14/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit

class UserMessageCell: UITableViewCell {
    
    @IBOutlet weak var userMessageBackground: UIView!
    @IBOutlet weak var userAvatarImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
