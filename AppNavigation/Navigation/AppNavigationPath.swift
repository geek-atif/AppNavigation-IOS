//
//  AppNavigationPath.swift
//  AppNavigation
//
//  Created by Atif Qamar on 03/08/24.
//

import Foundation

enum AppNavigationPath: Hashable {
    case homeScreen
    case screenOne
    case screenTwo
   

    
    static func == (lhs: AppNavigationPath, rhs: AppNavigationPath) -> Bool {
        switch (lhs, rhs) {
        case (.homeScreen, .homeScreen),
            (.screenOne, .screenOne),
            (.screenTwo, .screenTwo):
            return true
        default:
            return false
        }
    }
    
    func hash(into hasher: inout Hasher) {
        switch self {
        case .homeScreen:
            hasher.combine(0)
        case .screenOne:
            hasher.combine(1)
        case .screenTwo:
            hasher.combine(2)
        }
    }
}
