//
//  OnboardingView.swift
//  Restart
//
//  Created by Monir Haider Helalee on 18/4/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardinViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20){
            Text("Onbording")
                .font(.largeTitle)
            
            Button{
                //Action
                isOnboardinViewActive = false
            }label: {
                Text("start")
            }
        }//: VSTACK
    }
}

#Preview {
    OnboardingView()
}
