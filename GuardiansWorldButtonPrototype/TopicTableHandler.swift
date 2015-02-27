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
    
    private var topics: [TopicModel] = []
    
    internal class var cellHeight: CGFloat {
        get { return 60 }
    }
    
    internal var topicCount: Int {
        get { return self.topics.count }
    }

    override init() {
        super.init()
        
        self.topics = TopicModel.getAllTopics()
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
            
            // Configure the cell
            cell.topicId = model.id
            cell.titleLabel.text = model.title
            cell.topicImage.image = model.image
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == self.topics.count {
            return 5
        } else {
            return TopicTableHandler.cellHeight
        }
    }
    
}
