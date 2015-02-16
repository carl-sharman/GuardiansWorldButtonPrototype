//
//  MenuItemModel.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman Work on 13/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import Foundation
import UIKit

class MenuItemModel {
    var title: String = ""
    var image: UIImage? = nil
    
    init(title: String, image: UIImage) {
        self.title = title
        self.image = image
    }
}