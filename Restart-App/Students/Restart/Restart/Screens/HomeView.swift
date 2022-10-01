//
//  HomeView.swift
//  Restart
//
//  Created by Roy Welborn on 9/12/22.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: -Propert
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    @State private var isAnimating: Bool = false
    
    // MARK: -Body
    var body: some View {
        VStack(spacing: 20) {
            
            // MARK: -Header
            Spacer()
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeDensity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                        Animation
                            .easeOut(duration: 4)
                            .repeatForever()
                        , value: isAnimating
                        )
            }
            
            // MARK: -Center
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            // MARK: - Footer
            
            Spacer()
            Button(action: {
                withAnimation {
                    playSound(sound: "success", type: "m4a")
                    isOnboardingViewActive = true
                }
                
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }// END Button
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
        } // END VSTACK
        .onAppear(perform:
                    {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: { isAnimating = true })
        })
    }
}

// MARK: -Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
