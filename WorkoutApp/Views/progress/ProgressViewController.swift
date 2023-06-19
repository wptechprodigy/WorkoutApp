//
//  ProgressViewController.swift
//  WorkoutApp
//
//  Created by waheedCodes on 17/06/2023.
//

import UIKit

class ProgressViewController: BaseViewController {
    
    // MARK: -  Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = R.Strings.NavBar.progress
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: R.Strings.Progress.leftNavBar)
        addNavBarButton(at: .right, with: R.Strings.Progress.rightNavBar)
    }
}
