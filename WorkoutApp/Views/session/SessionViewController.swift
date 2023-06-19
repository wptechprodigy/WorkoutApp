//
//  SessionViewController.swift
//  WorkoutApp
//
//  Created by waheedCodes on 17/06/2023.
//

import UIKit

class SessionViewController: BaseViewController {
    
    // MARK: - Properties
    
    
}

extension SessionViewController {
    
    override func setupViews() {
        super.setupViews()
    }
    
    override func constrainViews() {
        super.constrainViews()
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: R.Strings.Session.leftNavBar)
        addNavBarButton(at: .right, with: R.Strings.Session.rightNavBar)
    }
}
