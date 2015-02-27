//
//  MenuTableViewController.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman Work on 13/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    var menuItems: [MenuItemModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.menuItems.append(MenuItemModel(title: "Year 1", image: UIImage(named: "one.png")!))
        self.menuItems.append(MenuItemModel(title: "Year 2", image: UIImage(named: "two.png")!))
        self.menuItems.append(MenuItemModel(title: "Year 3", image: UIImage(named: "three.png")!))
        self.menuItems.append(MenuItemModel(title: "Year 4", image: UIImage(named: "four.png")!))
        self.menuItems.append(MenuItemModel(title: "Year 5", image: UIImage(named: "five.png")!))
        self.menuItems.append(MenuItemModel(title: "Year 6", image: UIImage(named: "six.png")!))
//        self.menuItems.append(MenuItemModel(title: "Year 7", image: UIImage(named: "seven.png")!))
//        self.menuItems.append(MenuItemModel(title: "Year 8", image: UIImage(named: "eight.png")!))
//        self.menuItems.append(MenuItemModel(title: "Year 9", image: UIImage(named: "nine.png")!))
	
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //var topicViewController: TopicViewController = segue.destinationViewController.topViewController as TopicViewController
//        var selectedTopicCell: TopicCell = sender as TopicCell
        
  //      topicViewController.topicId = selectedTopicCell.topicId
        var topicTableViewController: TopicTableTableViewController = segue.destinationViewController.topViewController as TopicTableTableViewController
        var selectedYearCell: MenuItemCell = sender as MenuItemCell
        //topicTableViewController.yearNo = self.menuItems.filter { $0.title == selectedYearCell.titleLabel.text }[0].yearNo
        //topicTableViewController.yearNo = self.menuItems. self.menuItems.filter { $0.title == selectedYearCell.titleLabel.text }[0]
        topicTableViewController.yearNo = self.menuItems.indexOf { $0.title == selectedYearCell.titleLabel.text }! + 1
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return self.menuItems.count + 1
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell: MenuHeaderCell = tableView.dequeueReusableCellWithIdentifier("menuHeaderCell") as MenuHeaderCell
        headerCell.backgroundColor = AppDelegate.unitedLearningLightBlue
        
        
        return headerCell
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: MenuItemCell = tableView.dequeueReusableCellWithIdentifier("menuItemCell", forIndexPath: indexPath) as MenuItemCell

        if (indexPath.row == self.menuItems.count) {
            // Empty cell for grey bit at bottom
        } else {
            // Get the menu item model
            let model: MenuItemModel = self.menuItems[indexPath.row]
        
            // Configure the cell...
            cell.titleLabel.text = model.title
            cell.itemImage.image = model.image
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == self.menuItems.count {
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
