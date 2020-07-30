//
//  AppDelegate.swift
//  uiTestApp
//
//  Created by Diana Tsarkova on 30.07.2020.
//  Copyright © 2020 Diana Tsarkova. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let viewController = ViewController()
        let navigation = UINavigationController(rootViewController: viewController)
        
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        let frame = UIScreen.main.bounds
        window = UIWindow(frame: frame)

        window!.rootViewController = navigation
        window!.makeKeyAndVisible()
        
        return true
    }
}

