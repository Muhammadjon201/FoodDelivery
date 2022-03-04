//
//  AppDelegate.swift
//  FoodDelivery
//
//  Created by Muhammadjon Mamarasulov on 3/1/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    var window: UIWindow?



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
        
        let vc = MainTBC()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }

  


}

