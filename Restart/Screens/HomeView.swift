//
//  HomeView.swift
//  Restart
//
//  Created by Monir Haider Helalee on 18/4/24.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardinViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20){
            Text("Home")
                .font(.largeTitle)
            
            Button{
                //Action
                isOnboardinViewActive = true
            }label: {
                Text("Restart")
            }
        }//: VSTACK
    }
}

#Preview {
    HomeView()
}
