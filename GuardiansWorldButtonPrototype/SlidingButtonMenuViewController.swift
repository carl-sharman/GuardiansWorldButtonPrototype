//
//  SlidingButtonMenuViewController.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman on 19/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import UIKit

class SlidingButtonMenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var menuTableView2: UITableView!
    
    var menuItems: [MenuItemModel] = []
    var topicTableHandler: TopicTableHandler = TopicTableHandler()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.menuTableView2.delegate = self
        self.menuTableView2.dataSource = self
        
        self.menuItems.append(MenuItemModel(title: "Year 1", image: UIImage(named: "one.png")!))
        self.menuItems.append(MenuItemModel(title: "Year 2", image: UIImage(named: "two.png")!))
        self.menuItems.append(MenuItemModel(title: "Year 3", image: UIImage(named: "three.png")!))
        self.menuItems.append(MenuItemModel(title: "Year 4", image: UIImage(named: "four.png")!))
        self.menuItems.append(MenuItemModel(title: "Year 5", image: UIImage(named: "five.png")!))
        self.menuItems.append(MenuItemModel(title: "Year 6", image: UIImage(named: "six.png")!))
        
        //self.menuTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // UITableViewDataSource

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.menuItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: MenuItemCell = tableView.dequeueReusableCellWithIdentifier("menuItemCell2", forIndexPath: indexPath) as MenuItemCell
        
        // Get the menu item model
        let model: MenuItemModel = self.menuItems[indexPath.row]
            
        // Configure the cell...
        cell.titleLabel.text = model.title
        cell.itemImage.image = model.image
        cell.topicTableView.dataSource = topicTableHandler
        cell.topicTableView.delegate = topicTableHandler
        
        return cell
    }
    
    // UITableView delegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        // Get the menu item model and toggle selected
        let model: MenuItemModel = self.menuItems[indexPath.row]
        model.isSelected = !model.isSelected

        // Update with animations
        tableView.beginUpdates()
        tableView.endUpdates()
        
        var cellFrame: CGRect = tableView.cellForRowAtIndexPath(indexPath)!.frame
        
        tableView.scrollToRowAtIndexPath(indexPath, atScrollPosition: UITableViewScrollPosition.Bottom, animated: true)
        
        /*
        // Change cell size
        let selectedCell: MenuItemCell = tableView.cellForRowAtIndexPath(indexPath) as MenuItemCell
        UIView.animateWithDuration(0.2, delay: 0.0, options: .CurveEaseOut, animations: {
        
            // Change the cell height
            var selectedCellFrame = selectedCell.frame
            if model.isSelected {
                selectedCellFrame.size.height = 300
            } else {
                selectedCellFrame.size.height = 90
            }
            selectedCell.frame = selectedCellFrame
            
            // Adjust y position of all subsequent cells
            for var i = indexPath.row + 1; i < self.menuItems.count; i++ {
                var nextCellPath: NSIndexPath = NSIndexPath(forRow: i, inSection: 0)
                var nextCell: MenuItemCell = tableView.cellForRowAtIndexPath(nextCellPath) as MenuItemCell
                
                // Adjust position of cell
                var nextCellFrame = nextCell.frame
                if model.isSelected {
                    nextCellFrame.origin.y += 210
                } else {
                    nextCellFrame.origin.y -= 210
                }
                nextCell.frame = nextCellFrame
                
                println("\(i)")
            }
            
            }, completion: { finished in
                println("Cell open: \(model.isSelected)")
                //self.menuTableView2.reloadData()
        })
        
        // self.menuTableView2.reloadData()
        */
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        // Get the menu item model
        let model: MenuItemModel = self.menuItems[indexPath.row]

        if model.isSelected {

            
            //return 90 + (6 * 90)
            //return UITableViewAutomaticDimension
            let totalCellHeight: CGFloat = TopicTableHandler.cellHeight * CGFloat(self.topicTableHandler.topicCount)
            var height: CGFloat = totalCellHeight + 90  // topic table height + year group cell height
            
            return height;
        } else {
            return 90
        }
    }
    

/*
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "To do"
        } else {
            return "Completed"
        }
    }
    */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // Helpers
    
    func sizeViewToContent(view: UIView) {
        var fixedWidth: CGFloat = view.frame.size.width
        var newSize: CGSize = view.sizeThatFits(CGSizeMake(fixedWidth, CGFloat(MAXFLOAT)))
        var newFrame = view.frame
        newFrame.size = CGSizeMake(CGFloat(fmaxf(Float(newSize.width), Float(fixedWidth))), newSize.height)
        view.frame = newFrame
    }

}
