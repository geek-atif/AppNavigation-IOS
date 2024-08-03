//
//  ContentView.swift
//  AppNavigation
//
//  Created by Atif Qamar on 03/08/24.
//

import SwiftUI

struct LoginView : View {
    @State private var username: String = ""
    @State private var password: String = ""
    @StateObject var navigationStateManager = NavigationStateManager(selectionPath: [AppNavigationPath]())
    
    private var isLoginEnabled: Bool {
        !username.isEmpty && !password.isEmpty
    }
    
    var body: some View {
        NavigationStack(path: $navigationStateManager.selectionPath){
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .padding(.bottom, 40)
                
                TextField("Username", text: $username)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                Button(action: {
                    navigationStateManager.pushToStage(stage: .homeScreen)
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(isLoginEnabled ? Color.blue : Color.gray)
                        .cornerRadius(15.0)
                }
                .buttonStyle(PlainButtonStyle())
                .disabled(!isLoginEnabled)
                
            }
            .padding()
            .navigationDestination(for: AppNavigationPath.self) { path in
                switch path {
                case .homeScreen:
                    HomeUIView()
                case .screenOne:
                    ScreenOneUIView()
                case .screenTwo:
                    ScreenTwoUIView()
                }
            }
        }
        .environmentObject(navigationStateManager)
    }
}



#Preview {
    LoginView()
}
