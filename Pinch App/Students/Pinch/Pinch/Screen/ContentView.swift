//
//  ContentView.swift
//  Pinch
//
//  Created by Roy Welborn on 9/30/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - FUNCTIONS
    
    // MARK: - CONTENT
    
    
    var body: some View {
        VStack {
            NavigationView
            {
                ZStack{
                    
                } //: ZSTack
                .navigationTitle("Pinch and Zoom")
                
                
            } //: NAVIGATION
            .navigationViewStyle(.stack)
        }
        .padding()
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
