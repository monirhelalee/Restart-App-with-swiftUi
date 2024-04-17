//
//  ContentView.swift
//  Restart
//
//  Created by Monir Haider Helalee on 17/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("onboarding") var isOnboardinViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardinViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
