//
//  OverviewViewController.swift
//  WorkoutApp
//
//  Created by waheedCodes on 11/06/2023.
//

import UIKit

class OverviewViewController: BaseViewController {
    
    // MARK: - Properties
    
    private let allWorkoutsButton = SecondaryButton()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension OverviewViewController {
    override func addViews() {
        super.addViews()
        view.addSubview(allWorkoutsButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            allWorkoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    override func configure() {
        super.configure()
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkoutsButton)
        allWorkoutsButton.addTarget(self,
                                    action: #selector(didTapAllWorkoutsButton), 
                                    for: .touchUpInside)
    }
}

@objc
extension OverviewViewController {
    
    func didTapAllWorkoutsButton() {
        print("All workouts tapped...")
    }
}
