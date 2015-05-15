//
//  AppDelegate.swift
//  Scheduling Local Notifications
//
//  Created by Domenico Solazzo on 15/05/15.
//  License MIT
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        /* First ask the user if we are
        allowed to perform local notifications */
        let settings = UIUserNotificationSettings(forTypes: .Alert,
            categories: nil)
        
        application.registerUserNotificationSettings(settings)
        
        return true
    }
    
    func application(application: UIApplication, didRegisterUserNotificationSettings notificationSettings: UIUserNotificationSettings) {
        if notificationSettings.types == nil{
            /* The user did not allow us to send notifications */
            return
        }
        
        let notification = UILocalNotification()
        
    }
}

