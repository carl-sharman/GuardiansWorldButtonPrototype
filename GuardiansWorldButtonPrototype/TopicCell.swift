//
//  TopicCell.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman on 16/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import Foundation
import UIKit

class TopicCell: UITableViewCell {
        
    @IBOutlet weak var topicImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    internal var topicId: Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
