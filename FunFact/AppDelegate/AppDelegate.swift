//
//  AppDelegate.swift
//  FunFact
//
//  Created by Amir Ghoreshi on 09/11/2017.
//  Copyright © 2017 Amir Ghoreshi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let viewController = ViewController();
        viewController.view.backgroundColor = UIColor.white
        
        window!.rootViewController = viewController

        window!.makeKeyAndVisible()
        
        return true
    }
}

