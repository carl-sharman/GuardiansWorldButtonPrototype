//
//  TopicTableTableViewController.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman on 16/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import UIKit

class TopicTableTableViewController: UITableViewController {

    var topics: [TopicModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
//        self.topics.append(TopicModel(id: 1, title: "Number and place value", image: UIImage(named: "NumberAndPlaceValue")!, hasSubTopics: false))
//        self.topics.append(TopicModel(id: 2, title: "+ and -", image: UIImage(named: "PlusAndMinus")!, hasSubTopics: false))
//        self.topics.append(TopicModel(id: 3, title: "x and /", image: UIImage(named: "TimesAndDivision")!, hasSubTopics: false))
//        self.topics.append(TopicModel(id: 4, title: "Fractions", image: UIImage(named: "Fractions")!, hasSubTopics: false))
//        self.topics.append(TopicModel(id: 5, title: "Measurement", image: UIImage(named: "Measurement")!, hasSubTopics: false))
//        self.topics.append(TopicModel(id: 6, title: "Geometry", image: UIImage(named: "Geometry")!, hasSubTopics: true))
        self.topics.append(TopicModel(id: 1, title: "Number and place value", image: UIImage(named: "eight.png")!, hasSubTopics: false))
        self.topics.append(TopicModel(id: 2, title: "+ and -", image: UIImage(named: "eight.png")!, hasSubTopics: false))
        self.topics.append(TopicModel(id: 3, title: "x and /", image: UIImage(named: "eight.png")!, hasSubTopics: false))
        self.topics.append(TopicModel(id: 4, title: "Fractions", image: UIImage(named: "eight.png")!, hasSubTopics: false))
        self.topics.append(TopicModel(id: 5, title: "Measurement", image: UIImage(named: "eight.png")!, hasSubTopics: false))
        self.topics.append(TopicModel(id: 6, title: "Geometry", image: UIImage(named: "eight.png")!, hasSubTopics: true))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.topics.count + 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
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

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == self.topics.count {
            return 5
        } else {
            return 90
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
