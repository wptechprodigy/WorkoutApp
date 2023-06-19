//
//  WeekdayView.swift
//  WorkoutApp
//
//  Created by waheedCodes on 19/06/2023.
//

import UIKit

extension WeekView {
    
    final class WeekdayView: BaseView {
        
        // MARK: - Properties
        
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        // MARK: - Configuration
        
        func configureDay(with index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            
            let isToday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isToday ? Resources.Colors.active : Resources.Colors.bgColor
            
            [ nameLabel, dateLabel ].forEach { lbl in
                lbl.font = lbl == nameLabel ? Resources.Fonts.helveticaRegular(of: 10) : Resources.Fonts.helveticaRegular(of: 15)
                lbl.textColor = isToday ? .white : Resources.Colors.inactive
                lbl.text = lbl == nameLabel ? name.uppercased() : "\(day)"
            }
        }
    }
}

extension WeekView.WeekdayView {
    override func addViews() {
        super.addViews()
        
        addView(stackView)
        [ nameLabel, dateLabel ].forEach { stackView.addArrangedSubview($0) }
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        backgroundColor = Resources.Colors.bgColor
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        stackView.spacing = 4
        stackView.axis = .vertical
        stackView.alignment = .center
    }
}
