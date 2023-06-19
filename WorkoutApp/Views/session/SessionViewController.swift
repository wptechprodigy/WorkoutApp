//
//  SessionViewController.swift
//  WorkoutApp
//
//  Created by waheedCodes on 17/06/2023.
//

import UIKit

class SessionViewController: BaseViewController {
    
    // MARK: - Properties
    
    private let timerView: BaseInfoView = {
        let v = BaseInfoView(with: "Test", alignment: .center)
        return v
    }()
}

extension SessionViewController {
    
    override func setupViews() {
        super.setupViews()
        view.setupView(timerView)
    }
    
    override func constrainViews() {
        super.constrainViews()
        NSLayoutConstraint.activate([
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: R.Strings.Session.leftNavBar)
        addNavBarButton(at: .right, with: R.Strings.Session.rightNavBar)
    }
}
