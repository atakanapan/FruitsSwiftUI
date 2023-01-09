//
//  FructusApp.swift
//  Fructus
//
//  Created by Atakan Apan on 1/8/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @State private var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                    OnboardingView(isOnboarding: $isOnboarding)
            } else {
                ContentView()
            }
        }
    }
}
