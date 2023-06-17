//
//  BaseViewController.swift
//  WorkoutApp
//
//  Created by waheedCodes on 17/06/2023.
//

import UIKit

class BaseViewController: UIViewController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

//@objc
extension BaseViewController {
    func addViews() {}
    func layoutViews() {}
    func configure() {
        view.backgroundColor = Resources.Colors.bgColor
    }
}
