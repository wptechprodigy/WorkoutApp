//
//  BaseView.swift
//  WorkoutApp
//
//  Created by waheedCodes on 18/06/2023.
//

import UIKit

class BaseView: UIView {
    
    // MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc
extension BaseView {
    func addViews() {}
    func layoutViews() {}
    func configure() {}
}
