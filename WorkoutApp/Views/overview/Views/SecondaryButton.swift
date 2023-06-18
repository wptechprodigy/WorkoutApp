//
//  SecondaryButton.swift
//  WorkoutApp
//
//  Created by waheedCodes on 18/06/2023.
//

import UIKit

final class SecondaryButton: UIButton {
    
    // MARK: - Properties
    
    private let btnTitleLabel = UILabel()
    private let iconView = UIImageView()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: -
    
    func setTitle(_ title: String) {
        btnTitleLabel.text = title
    }
}

private extension SecondaryButton {
    
    func addViews() {
        addSubview(btnTitleLabel)
        addSubview(iconView)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            btnTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            btnTitleLabel.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            btnTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    func configure() {
        backgroundColor = Resources.Colors.seccondary
        layer.cornerRadius = 14
        makeSystem(self)
        configureBtnTitle()
        configureIconView()
    }
    
    func configureBtnTitle() {
        btnTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        btnTitleLabel.textColor = Resources.Colors.active
        btnTitleLabel.textAlignment = .center
        btnTitleLabel.font = Resources.Fonts.helveticaRegular(of: 15)
    }
    
    func configureIconView() {
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.image = Resources.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = Resources.Colors.active
    }
}
