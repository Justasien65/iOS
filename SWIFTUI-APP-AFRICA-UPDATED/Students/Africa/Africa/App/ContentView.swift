//
//  ContentView.swift
//  Africa
//
//  Created by Roy Welborn on 1/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: - Properties
        let animals: [Animal] = Bundle.main.decode("animals.json")
        // MARK: - Body
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }//: End Link
                    
                }//: End Loop
            } //: End List
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
