//
//  Resources.swift
//  WorkoutApp
//
//  Created by waheedCodes on 12/06/2023.
//

import UIKit

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
            static let overview             =   "Overview"
            static let session              =   "Session"
            static let progress             =   "Progress"
            static let settings             =   "Settings"
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
            static let leftNavBar           =   "Pause"
            static let rightNavBar          =   "Finish"
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
            static let overview             =   UIImage(systemName: "house")
            static let session              =   UIImage(systemName: "clock")
            static let progress             =   UIImage(systemName: "chart.bar")
            static let settings             =   UIImage(systemName: "gearshape")
        }
        
        enum Common {
            static let downArrow            =   UIImage(systemName: "chevron.down")
        }
    }
    
    // MARK: - Font
    
    enum Fonts {
        static func helveticaRegular(of size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
