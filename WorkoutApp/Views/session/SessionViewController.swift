//
//  SessionViewController.swift
//  WorkoutApp
//
//  Created by waheedCodes on 17/06/2023.
//

import UIKit

class SessionViewController: BaseViewController {
    
    // MARK: - Properties
    
    private let timerView = TimerView()
    private let timerDuration = 3.0
    
    // MARK: -
    
    override func didTapLeftNavBarButton() {
        if timerView.state == .isStopped {
            timerView.startTimer()
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRunning ? .isStopped : .isRunning
        setNavBarButtonTitle(
            timerView.state == .isRunning
                ? R.Strings.Session.navBarPause
                : R.Strings.Session.navBarStart,
            at: .left
        )
    }
    
    override func didTapRightNavBarButton() {
        timerView.stopTimer()
        timerView.state = .isStopped
        setNavBarButtonTitle(R.Strings.Session.navBarStart, at: .left)
    }
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
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            timerView.heightAnchor.constraint(equalToConstant: 340)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: R.Strings.Session.navBarStart)
        addNavBarButton(at: .right, with: R.Strings.Session.navBarFinish)
        
        timerView.configure(with: timerDuration, progress: 0)
    }
}
