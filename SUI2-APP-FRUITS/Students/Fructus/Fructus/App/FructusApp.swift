//
//  FructusApp.swift
//  Fructus
//
//  Created by Roy Welborn on 10/10/22.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding
            {
                OnboardingView()
            }
            else
            {
                ContentView()
            }
        }
    }
}
