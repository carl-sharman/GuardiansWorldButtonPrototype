//
//  MainMenuViewController.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman on 23/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    @IBOutlet weak var rectangleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.shrinkRectangle()
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func shrinkRectangle() {
        
        UIView.animateWithDuration(0.7, delay: 1.0, options: .CurveEaseOut, animations: {
            
            var rectangleTopFrame = self.rectangleView.frame
            
            rectangleTopFrame.size.height = 50
            
            self.rectangleView.frame = rectangleTopFrame
            
            }, completion: { finished in
                println("Basket doors opened!")
        })
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
