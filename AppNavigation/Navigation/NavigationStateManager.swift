//
//  NavigationStateManager.swift
//  AppNavigation
//
//  Created by Atif Qamar on 03/08/24.
//

import Foundation
@MainActor
class NavigationStateManager<NavigationStage: Hashable>: ObservableObject {
    @Published var selectionPath: [NavigationStage]
    
    init(selectionPath: [NavigationStage] = []) {
        self.selectionPath = selectionPath
    }
    
    func pushToStage(stage: NavigationStage) {
        selectionPath.append(stage)
    }
    
    func popToRoot() {
        selectionPath = []
    }
  
}
