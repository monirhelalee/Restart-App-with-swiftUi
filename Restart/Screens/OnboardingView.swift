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
        
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all,edges: .all)
            VStack(spacing: 20){
                // MARK - HADER
                Spacer()
                
                VStack(spacing: 0){
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                    It's not how much we give but how much love we put into given.
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,10)
                }
                
                // MARK - CENTER
                
                ZStack{
                    ZStack{
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                    }
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }
                
                Spacer()
                
                // MARK - Fotter
                
                ZStack{
                    // PART OF THE CUSTOM BUTTON
                    
                    // 1. Background (STATIC)
                    Capsule()
                        .fill(.white.opacity(0.2))
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    // 2. Call - to - action (STATIC)
                    Text("Get Started")
                        .font(.system(.title3,design: .rounded))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    // 3. capsule (dynamic widgt)
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        Spacer()
                    }
                    // 4. circle (draggable)
                    
                    HStack {
                        ZStack{
                           Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24,weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80,alignment: .center)
                        .onTapGesture {
                            isOnboardinViewActive = false
                        }
                        
                        Spacer()
                        
                    }
                }
                .frame(height: 80,alignment: .center)
                .padding()
            }
        }//: VSTACK
    }
}

#Preview {
    OnboardingView()
}
