//
//  HomeUIView.swift
//  AppNavigation
//
//  Created by Atif Qamar on 03/08/24.
//

import SwiftUI

struct HomeUIView: View {
    @EnvironmentObject var navigationStateManager: NavigationStateManager<AppNavigationPath>
    var body: some View {
        VStack(spacing : 50){
            Button(action: {
                navigationStateManager.pushToStage(stage: .screenOne)
            }) {
                Text("Open Screen One")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.cyan)
                    .cornerRadius(15.0)
            }
            .buttonStyle(PlainButtonStyle())
            
            Button(action: {
                navigationStateManager.pushToStage(stage: .screenTwo)
            }) {
                Text("Open Screen Two")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background( Color.brown)
                    .cornerRadius(15.0)
            }
            .buttonStyle(PlainButtonStyle())
        }
        .navigationBarHidden(true)
        
    }
}

#Preview {
    HomeUIView()
}
