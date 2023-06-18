//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by waheedCodes on 17/06/2023.
//

import UIKit

final class NavBarController: UINavigationController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    // MARK: -
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.darkGray,
            .font: Resources.Fonts.helveticaRegular(of: 17)
        ]
        navigationBar
            .addBottomBorder(
                of: Resources.Colors.separator, 
                height: 1)
    }
}
