//
//  BaseInfoView.swift
//  WorkoutApp
//
//  Created by waheedCodes on 19/06/2023.
//

import UIKit

class BaseInfoView: BaseView {
    
    // MARK: - Properties
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(of: 13)
        label.textColor = R.Colors.inactive
        return label
    }()
    
    private let contentView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.layer.borderColor = R.Colors.separator.cgColor
        v.layer.cornerRadius = 5
        v.layer.borderWidth = 1
        return v
    }()
}

extension BaseInfoView {
    override func setupViews() {
        super.setupViews()
        [titleLabel, contentView].forEach { setupView($0) }
    }
    
    override func constrainViews() {
        super.constrainViews()
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            contentView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .clear
    }
}
