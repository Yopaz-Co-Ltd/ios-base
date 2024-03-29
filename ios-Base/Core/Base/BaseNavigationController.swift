//
//  BaseNavigationVC.swift
//  ManualzSns
//
//  Created by đào sơn on 06/03/2024.
//

import Foundation
import UIKit

class BaseNavigationController: UINavigationController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        if let topVC = viewControllers.last {
            return topVC.preferredStatusBarStyle
        }
        return .default
    }

}
