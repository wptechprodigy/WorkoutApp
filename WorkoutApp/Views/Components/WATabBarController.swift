//
//  WATabBarController.swift
//  WorkoutApp
//
//  Created by waheedCodes on 11/06/2023.
//

import UIKit

enum Tabs: Int, CaseIterable {
    case overview
    case session
    case progress
    case settings
}

final class WATabBarController: UITabBarController {
    
    // MARK: - Initializer
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
        switchTo(tab: .session)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func switchTo(tab: Tabs) {
        selectedIndex = tab.rawValue
    }
    
    // MARK: - Configuration
    
    private func configure() {
        tabBar.tintColor = R.Colors.active
        tabBar.barTintColor = R.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = R.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let controllers: [WANavBarController] = Tabs.allCases.map { tab in
            let controller = WANavBarController(rootViewController: getController(for: tab))
            controller.tabBarItem = UITabBarItem(title: R.Strings.TabBar.title(for: tab),
                                                 image: R.Images.TabBar.icon(for: tab),
                                                 tag: tab.rawValue)
            return controller
        }

        setViewControllers(controllers, animated: true)
    }
    
    private func getController(for tab: Tabs) -> BaseViewController {
        switch tab {
        case .overview: return OverviewViewController()
        case .session: return SessionViewController()
        case .progress: return ProgressViewController()
        case .settings: return SettingsViewController()
        }
    }
}
