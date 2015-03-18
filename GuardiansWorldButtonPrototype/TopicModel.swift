//
//  TopicModel.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman on 16/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import Foundation
import UIKit

internal class TopicModel {
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
    
    internal class func getAllTopics() -> [TopicModel] {
        
        var topics: [TopicModel] = [TopicModel]()
        
        //        self.topics.append(TopicModel(id: 1, title: "Number and place value", image: UIImage(named: "NumberAndPlaceValue")!, hasSubTopics: false))
        //        self.topics.append(TopicModel(id: 2, title: "+ and -", image: UIImage(named: "PlusAndMinus")!, hasSubTopics: false))
        //        self.topics.append(TopicModel(id: 3, title: "x and /", image: UIImage(named: "TimesAndDivision")!, hasSubTopics: false))
        //        self.topics.append(TopicModel(id: 4, title: "Fractions", image: UIImage(named: "Fractions")!, hasSubTopics: false))
        //        self.topics.append(TopicModel(id: 5, title: "Measurement", image: UIImage(named: "Measurement")!, hasSubTopics: false))
        //        self.topics.append(TopicModel(id: 6, title: "Geometry", image: UIImage(named: "Geometry")!, hasSubTopics: true))
        topics.append(TopicModel(id: 1, title: "Number and place value", image: UIImage(named: "Dogs1.jpg")!, hasSubTopics: false))
        topics.append(TopicModel(id: 2, title: "+ and -", image: UIImage(named: "Dogs2.jpg")!, hasSubTopics: false))
        topics.append(TopicModel(id: 3, title: "× and ÷", image: UIImage(named: "Dogs3.jpg")!, hasSubTopics: false))
        topics.append(TopicModel(id: 4, title: "Fractions", image: UIImage(named: "Dogs4.jpg")!, hasSubTopics: false))
        topics.append(TopicModel(id: 5, title: "Measurement", image: UIImage(named: "Dogs5.jpg")!, hasSubTopics: false))
        topics.append(TopicModel(id: 6, title: "Geometry", image: UIImage(named: "Dogs6.jpg")!, hasSubTopics: true))
	
        return topics
    }
}