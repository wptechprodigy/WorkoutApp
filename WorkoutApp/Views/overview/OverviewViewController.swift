//
//  OverviewViewController.swift
//  WorkoutApp
//
//  Created by waheedCodes on 11/06/2023.
//

import UIKit

class OverviewViewController: BaseViewController {
    
    // MARK: - Properties
    
    private let navBar = OverviewNavBar()
}

extension OverviewViewController {
    override func setupViews() {
        super.setupViews()
        view.setupView(navBar)
    }
    
    override func constrainViews() {
        super.constrainViews()
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        navigationController?.navigationBar.isHidden = true
    }
}
