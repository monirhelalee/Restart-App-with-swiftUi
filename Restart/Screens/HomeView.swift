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
            // MARK: - HEADER
            
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            
            // MARK: - CENTER
            
            Text("""
                The time that leads to mastery is dependent on the intensity of our focus.
            """)
            .font(.title3)
            .fontWeight(.light)
            .foregroundColor(.secondary)
            .multilineTextAlignment(.center)
            .padding()
            
            // MARK: - FOOTER
            
            Spacer()
            
            Button(action:{
                isOnboardinViewActive = true
            }){
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }//: VSTACK
    }
}

#Preview {
    HomeView()
}
