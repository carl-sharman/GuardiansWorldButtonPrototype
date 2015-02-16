//
//  TopicModel.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman on 16/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import Foundation
import UIKit

class TopicModel {
    var id: Int = 0
    var title: String = ""
    var image: UIImage? = nil
    var hasSubTopics: Bool = false
    
    init(id: Int, title: String, image: UIImage, hasSubTopics: Bool) {
        self.id = id
        self.title = title
        self.image = image
        self.hasSubTopics = hasSubTopics
    }
}