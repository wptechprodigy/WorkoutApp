//
//  SecondaryButton.swift
//  WorkoutApp
//
//  Created by waheedCodes on 18/06/2023.
//

import UIKit

public enum WAButtonType {
    case primary
    case secondary
}

final class WAButton: UIButton {
    
    // MARK: - Properties
    
    private var type: WAButtonType = .primary
    private let btnTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    private let iconView: UIImageView = {
        let imgView = UIImageView()
        imgView.image = R.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        return imgView
    }()
    
    // MARK: - Initializers
    
    init(with type: WAButtonType) {
        self.type = type
        super.init(frame: .zero)
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        addViews()
        layoutViews()
        configure()
    }
    
    // MARK: -
    
    func setTitle(_ title: String?) {
        switch type {
        case .primary:
            btnTitleLabel.text = title?.uppercased()
        case .secondary:
            btnTitleLabel.text = title
        }
    }
    
    func addAction(_ action: Selector, with target: Any?) {
        addTarget(target, action: action, for: .touchUpInside)
    }
}

private extension WAButton {
    
    func addViews() {
        setupView(btnTitleLabel)
        setupView(iconView)
    }
    
    func layoutViews() {
        var horizontalOffset: CGFloat {
            switch type {
            case .primary: return 0
            case .secondary: return 10
            }
        }
        
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horizontalOffset),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            btnTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            btnTitleLabel.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            btnTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horizontalOffset * 1.5)
        ])
    }
    
    func configure() {
        switch type {
        case .primary:
            btnTitleLabel.font = R.Fonts.helveticaRegular(of: 13)
            btnTitleLabel.textColor = R.Colors.inactive
            iconView.tintColor = R.Colors.inactive
        case .secondary:
            backgroundColor = R.Colors.seccondary
            btnTitleLabel.textColor = R.Colors.active
            btnTitleLabel.font = R.Fonts.helveticaRegular(of: 15)
            iconView.tintColor = R.Colors.active
            layer.cornerRadius = 14
        }
        makeSystem(self)
    }
}
