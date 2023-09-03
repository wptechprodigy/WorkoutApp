//
//  BaseViewController.swift
//  WorkoutApp
//
//  Created by waheedCodes on 17/06/2023.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseViewController: UIViewController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        constrainViews()
        configureAppearance()
    }
}

@objc
extension BaseViewController {
    func setupViews() {}
    func constrainViews() {}
    func configureAppearance() {
        view.backgroundColor = R.Colors.bgColor
    }
    
    func didTapLeftNavBarButton() {
        print("Left nav bar tapped...")
    }
    
    func didTapRightNavBarButton() {
        print("Right nav bar tapped...")
    }
}

extension BaseViewController {
    func addNavBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inactive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helveticaRegular(of: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(didTapLeftNavBarButton), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(didTapRightNavBarButton), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
    
    func setNavBarButtonTitle(_ title: String, at position: NavBarPosition) {
        switch position {
        case .left:
            (navigationItem.leftBarButtonItem?.customView as? UIButton)?.setTitle(title, for: .normal)
        case .right:
            (navigationItem.rightBarButtonItem?.customView as? UIButton)?.setTitle(title, for: .normal)
        }
    }
}
