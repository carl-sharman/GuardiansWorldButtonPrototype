//
//  TopicViewController.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman on 17/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import UIKit

class TopicViewController: UIViewController, UITextViewDelegate, UIScrollViewDelegate {

    @IBOutlet weak var topicScrollView: UIScrollView!
//    @IBOutlet weak var topicTextView: UITextView!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var imageTopConstraint: NSLayoutConstraint!
    
    private let leftRightMargin: Int = 10
    internal var topicId: Int = 0
    internal var topicTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.topicLabel.preferredMaxLayoutWidth = self.view.frame.width - CGFloat(self.leftRightMargin * 2)
	
        // Do any additional setup after loading the view.
        //self.sizeTextViewToContent(self.topicTextView)
        
//        self.topicTextView.frame.size = CGSizeMake(300, 900)
//        self.topicTextView.frame = CGRectMake(0, 0, 300, 900)
        
        //self.topicScrollView.contentSize = CGSizeMake(self.view.frame.width, self.topicTextView.frame.height + self.topicTextView.frame.origin.y)
        //self.topicScrollView.contentSize = CGSizeMake(self.view.frame.width, 4000)

        //        self.topicTextView.delegate = self
        self.topicScrollView.delegate = self
        
        self.navigationItem.title = self.topicTitle
        switch(self.topicId) {
        case 1:
            self.mainImage.image = UIImage(named: "Dogs1.jpg")
        case 2:
            self.mainImage.image = UIImage(named: "Dogs2.jpg")
        case 3:
            self.mainImage.image = UIImage(named: "Dogs3.jpg")
        case 4:
            self.mainImage.image = UIImage(named: "Dogs4.jpg")
        case 5:
            self.mainImage.image = UIImage(named: "Dogs5.jpg")
        case 6:
            self.mainImage.image = UIImage(named: "Dogs6.jpg")
        default:
            NSException(name: "Unhandled topic", reason: "Topic id \(self.topicId) not handled", userInfo: nil)
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // scrollView
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        var yOffset = self.topicScrollView.contentOffset.y
        //self.imageTopConstraint.constant--
        self.imageTopConstraint.constant = -(yOffset / 6)
        if self.imageTopConstraint.constant > 0 {
            self.imageTopConstraint.constant = 0
        }
    }
    
    // textView
    
    func textViewDidChange(textView: UITextView) {
        self.sizeTextViewToContent(textView)
    }
    
    // Helpers
    
    func sizeTextViewToContent(textView: UITextView) {
        var fixedWidth: CGFloat = textView.frame.size.width
        var newSize: CGSize = textView.sizeThatFits(CGSizeMake(fixedWidth, CGFloat(MAXFLOAT)))
        var newFrame = textView.frame
        newFrame.size = CGSizeMake(CGFloat(fmaxf(Float(newSize.width), Float(fixedWidth))), newSize.height)
        textView.frame = newFrame
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
