//
//  WeekView.swift
//  WorkoutApp
//
//  Created by waheedCodes on 19/06/2023.
//

import UIKit

final class WeekView: BaseView {
    
    // MARK: - Properties
    
    private var stackView = UIStackView()
}

extension WeekView {
    override func addViews() {
        super.addViews()
        addView(stackView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        backgroundColor = .red.withAlphaComponent(0.6)
        
        stackView.spacing = 8
        stackView.distribution = .fillEqually
    }
}
