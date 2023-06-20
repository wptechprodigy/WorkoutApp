//
//  WABaseInfoView.swift
//  WorkoutApp
//
//  Created by waheedCodes on 19/06/2023.
//

import UIKit

class WABaseInfoView: BaseView {
    
    // MARK: - Properties
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(of: 13)
        label.textColor = R.Colors.inactive
        return label
    }()
    
    private let periodButton = WAButton(with: .primary)
    
    private let contentView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.layer.borderColor = R.Colors.separator.cgColor
        v.layer.cornerRadius = 5
        v.layer.borderWidth = 1
        return v
    }()
    
    // MARK: - Initializer
    
    init(with title: String? = nil,
         buttonTitle: String? = nil
    ) {
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = buttonTitle == nil ? .center : .left
        
        periodButton.setTitle(buttonTitle)
        periodButton.isHidden = buttonTitle == nil ? true : false
        
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
    }
    
    // MARK: - Actions
    
    func periodButtonAction(target: Any?, action: Selector) {
        periodButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension WABaseInfoView {
    override func setupViews() {
        super.setupViews()
        [titleLabel, periodButton, contentView].forEach { setupView($0) }
    }
    
    override func constrainViews() {
        super.constrainViews()
        
        /// Handle when the title label is nil
        let contentViewTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
        let contentViewOffset: CGFloat = titleLabel.text == nil ? 0 : 10
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            periodButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            periodButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            periodButton.heightAnchor.constraint(equalToConstant: 28),
            
            contentView.topAnchor.constraint(equalTo: contentViewTopAnchor, constant: contentViewOffset),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .clear
    }
}
