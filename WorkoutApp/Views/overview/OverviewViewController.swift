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
    override func addViews() {
        super.addViews()
        
        view.addView(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        navigationController?.navigationBar.isHidden = true
    }
}
