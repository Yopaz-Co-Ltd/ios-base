//
//  AppDelegate.swift
//  ManualzSns
//
//  Created by đào sơn on 06/03/2024.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow()
        configRoot()
        self.window?.makeKeyAndVisible()
        return true
    }

    func configRoot() {
        let rootVC = RootViewController()
        let navigationVC = BaseNavigationController(rootViewController: rootVC)
        self.window?.rootViewController = navigationVC
    }
}
