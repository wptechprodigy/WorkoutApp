//
//  TimerView.swift
//  WorkoutApp
//
//  Created by waheedCodes on 28/08/2023.
//

import UIKit

enum TimerState {
    case isRunning
    case isPaused
    case isStopped
}

final class TimerView: WABaseInfoView {
    
    // MARK: - Properties
    
    private let progressView = ProgressView()
    private var timer = Timer()
    private var timerProgress: CGFloat = 0
    private var timerDuration = 0.0
    public var state: TimerState = .isStopped
    
    // MARK: -
    
    func configure(with duration: Double, progress: Double) {
        self.timerDuration = duration
        
        let tempCurrentValue = progress > duration ? duration : progress
        let goalDividerValue = duration == 0 ? 1 : duration
        let percent = tempCurrentValue / goalDividerValue
        progressView.drawProgress(with: CGFloat(percent))
    }
    
    func startTimer() {
        timer.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.01,
                                     repeats: true,
                                     block: { [weak self] timer in
            guard let self = self else { return }
            
            self.timerProgress += 0.01
            
            if self.timerProgress == self.timerDuration {
                self.timerProgress = self.timerDuration
                timer.invalidate()
            }
            
            configure(with: self.timerDuration, progress: self.timerProgress)
        })
    }
    
    func pauseTimer() {
        timer.invalidate()
    }
    
    func stopTimer() {
        guard self.timerProgress > 0 else { return }
        timer.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.01,
                                     repeats: true,
                                     block: { [weak self] timer in
            guard let self = self else { return }
            
            self.timerProgress -= 0.1
            
            if self.timerProgress <= 0 {
                self.timerProgress = 0
                timer.invalidate()
            }
            
            configure(with: self.timerDuration, progress: self.timerProgress)
        })
    }
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
