//
//  TopicTableHandler.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman on 23/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import Foundation
import UIKit

class TopicTableHandler: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var topics: [TopicModel] = []

    override init() {
        super.init()
        self.topics.append(TopicModel(id: 1, title: "Number and place value", image: UIImage(named: "Dogs1.jpg")!, hasSubTopics: false))
        self.topics.append(TopicModel(id: 2, title: "+ and -", image: UIImage(named: "Dogs2.jpg")!, hasSubTopics: false))
        self.topics.append(TopicModel(id: 3, title: "x and /", image: UIImage(named: "Dogs3.jpg")!, hasSubTopics: false))
        self.topics.append(TopicModel(id: 4, title: "Fractions", image: UIImage(named: "Dogs4.jpg")!, hasSubTopics: false))
        self.topics.append(TopicModel(id: 5, title: "Measurement", image: UIImage(named: "Dogs5.jpg")!, hasSubTopics: false))
        self.topics.append(TopicModel(id: 6, title: "Geometry", image: UIImage(named: "Dogs6.jpg")!, hasSubTopics: true))
    }
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return self.topics.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("topicCell", forIndexPath: indexPath) as TopicCell
        
        if (indexPath.row == self.topics.count) {
            // Empty cell for grey bit at bottom
        } else {
            // Get the menu item model
            let model: TopicModel = self.topics[indexPath.row]
            
            // Configure the cell...
            cell.titleLabel.text = model.title
            cell.topicImage.image = model.image
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == self.topics.count {
            return 5
        } else {
            return 90
        }
    }
    
}
