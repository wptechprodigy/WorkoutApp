//
//  OverviewNavBar.swift
//  WorkoutApp
//
//  Created by waheedCodes on 18/06/2023.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    // MARK: - Properties
    
    private let titleLabel = UILabel()
    private let allWorkoutsButton: WAButton = {
        let button = WAButton(with: .secondary)
        button.setTitle(R.Strings.Overview.allWorkoutsButton)
        return button
    }()
    private let addButton = UIButton()
    private let weekView = WeekView()
    
    // MARK: - Lifecycle
    
    override func layoutSubviews() {
        super.constrainViews()
        addBottomBorder(of: R.Colors.separator, height: 1)
    }
    
    // MARK: - Behaviours
    
    func addAddWorkoutAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
    override func setupViews() {
        super.setupViews()
        [
            titleLabel,
            allWorkoutsButton,
            addButton,
            weekView
        ].forEach { setupView($0) }
    }
    
    override func constrainViews() {
        super.constrainViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 16),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            weekView.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .white
        
        titleLabel.text = R.Strings.NavBar.overview
        titleLabel.textColor = R.Colors.darkGray
        titleLabel.font = R.Fonts.helveticaRegular(of: 22)
        
        addButton.setImage(R.Images.Common.add, for: .normal)
    }
}
