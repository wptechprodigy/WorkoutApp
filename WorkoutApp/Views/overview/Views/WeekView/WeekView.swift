//
//  WeekView.swift
//  WorkoutApp
//
//  Created by waheedCodes on 19/06/2023.
//

import UIKit

final class WeekView: BaseView {
    
    // MARK: - Properties
    
    private let calendar = Calendar.current
    private let stackView = UIStackView()
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
        
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        
        var weekdays = calendar.shortStandaloneWeekdaySymbols
        
        if calendar.firstWeekday == 1 {
            let sun = weekdays.remove(at: 0)
            weekdays.append(sun)
        }
        
        weekdays.enumerated().forEach { (index, name) in
            let view = WeekdayView()
            view.configureDay(with: index, and: name)
            stackView.addArrangedSubview(view)
        }
    }
}
