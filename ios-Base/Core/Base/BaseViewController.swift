//
//  BaseViewController.swift
//  ManualzSns
//
//  Created by đào sơn on 06/03/2024.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        navigationController?.navigationBar.isHidden = true
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
