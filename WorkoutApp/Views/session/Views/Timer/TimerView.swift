//
//  TimerView.swift
//  WorkoutApp
//
//  Created by waheedCodes on 28/08/2023.
//

import UIKit

final class TimerView: WABaseInfoView {
    
    private let progressView: ProgressView = {
        let v = ProgressView()
        v.drawProgress(with: 1.0)
        return v
    }()
}

extension TimerView {
    override func setupViews() {
        super.setupViews()
        setupView(progressView)
    }
    
    override func constrainViews() {
        super.constrainViews()
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}
