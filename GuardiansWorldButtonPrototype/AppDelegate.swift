//
//  AppDelegate.swift
//  GuardiansWorldButtonPrototype
//
//  Created by Carl Sharman Work on 13/02/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    // United Learning logo colours
    
    // "The best in everyone" colour
    internal class var unitedLearningLightBlue: UIColor {
        get { return UIColor(red: 68.0/255.0, green: 120.0/255.0, blue: 185.0/255.0, alpha: 1.0) }
    }
    
    // "United Learning" colour
    internal class var unitedLearningDarkBlue: UIColor {
        get { return UIColor(red: 32.0/255.0, green: 36.0/255.0, blue: 104.0/255.0, alpha: 1.0) }
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Override point for customization after application launch.
        
        // UI Appearance customization
        //UINavigationBar.appearance().barTintColor = UIColor(red: 234.0/255.0, green: 46.0/255.0, blue: 73.0/255.0, alpha: 1.0)  // Background colour of nav bar
//        UINavigationBar.appearance().barTintColor = AppDelegate.unitedLearningDarkBlue  // Background colour of nav bar
        UINavigationBar.appearance().barTintColor = AppDelegate.unitedLearningLightBlue  // Background colour of nav bar
        
        UINavigationBar.appearance().barStyle = UIBarStyle.Black  // Makes the phone status bar text and battery icon white
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().translucent = true;
        
        //UINavigationBar.appearance().backgroundColor = UIColor.blueColor()
        //UINavigationBar.appearance().alpha = 0.0

        UIBarButtonItem.appearance().tintColor = UIColor.whiteColor()
        UIBarButtonItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.whiteColor()], forState: UIControlState.Normal)
        
        UITabBar.appearance().backgroundColor = UIColor.blueColor();
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

