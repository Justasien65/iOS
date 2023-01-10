//
//  ContentView.swift
//  Africa
//
//  Created by Roy Welborn on 1/5/23.
//

import SwiftUI

struct ContentView: View {
    
    // PROPERTIES
    
    // BODY
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Content")
        }
        .padding()
    }
}

// PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
