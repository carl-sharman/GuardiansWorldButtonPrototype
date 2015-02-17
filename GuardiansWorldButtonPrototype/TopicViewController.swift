//
//  TopicViewController.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman on 17/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import UIKit

class TopicViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var topicScrollView: UIScrollView!
    @IBOutlet weak var topicTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.sizeTextViewToContent(self.topicTextView)
        
        self.topicTextView.frame.size = CGSizeMake(300, 900)
        self.topicTextView.frame = CGRectMake(0, 0, 300, 900)
        
        //self.topicScrollView.contentSize = CGSizeMake(self.view.frame.width, self.topicTextView.frame.height + self.topicTextView.frame.origin.y)
        self.topicScrollView.contentSize = CGSizeMake(self.view.frame.width, 4000)
        self.topicTextView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewDidChange(textView: UITextView) {
        self.sizeTextViewToContent(textView)
    }
    
    func sizeTextViewToContent(textView: UITextView) {
        var fixedWidth: CGFloat = self.topicTextView.frame.size.width
        var newSize: CGSize = self.topicTextView.sizeThatFits(CGSizeMake(fixedWidth, CGFloat(MAXFLOAT)))
        var newFrame = self.topicTextView.frame
        newFrame.size = CGSizeMake(CGFloat(fmaxf(Float(newSize.width), Float(fixedWidth))), newSize.height)
        self.topicTextView.frame = newFrame
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
