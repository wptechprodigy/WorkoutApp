//
//  Resources.swift
//  WorkoutApp
//
//  Created by waheedCodes on 12/06/2023.
//

import UIKit

typealias R = Resources

enum Resources {
    
    // MARK: - Colors
    
    enum Colors {
        static let active                   =   UIColor(hexString: "#437BFE")
        static let inactive                 =   UIColor(hexString: "#929DA5")
        
        static let separator                =   UIColor(hexString: "#E8ECEF")
        static let darkGray                 =   UIColor(hexString: "#545C77")
        static let bgColor                  =   UIColor(hexString: "#F8F9F9")
        static let seccondary               =   UIColor(hexString: "#F0F3FF")
    }
    
    // MARK: - Strings
    
    enum Strings {
        
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview:             return "Overview"
                case .session:              return "Session"
                case .progress:             return "Progress"
                case .settings:             return "Settings"
                }
            }
        }
        
        enum NavBar {
            static let overview             =   "Today"
            static let session              =   "High Intensity Cardio"
            static let progress             =   "Workout Progress"
            static let settings             =   "Settings"
        }
        
        enum Overview {
            static let allWorkoutsButton    =   "All Workouts"
        }
        
        enum Session {
            static let navBarStart          =   "Start   "
            static let navBarPause          =   "Pause"
            static let navBarFinish         =   "Finish"
        }
        
        enum Progress {
            static let leftNavBar           =   "Export"
            static let rightNavBar          =   "Details"
        }
        
        enum Settings {
            
        }
    }
    
    // MARK: - Images
    
    enum Images {
        
        // MARK: - Tab bar
        
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview:             return UIImage(systemName: "house")
                case .session:              return UIImage(systemName: "clock")
                case .progress:             return UIImage(systemName: "chart.bar")
                case .settings:             return UIImage(systemName: "gearshape")
                }
            }
        }
        
        enum Common {
            static let downArrow            =   UIImage(systemName: "chevron.down")
            static let add                  =   UIImage(named: "add_btn")
        }
    }
    
    // MARK: - Font
    
    enum Fonts {
        static func helveticaRegular(of size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
