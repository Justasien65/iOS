//
//  InsetFactView.swift
//  Africa
//
//  Created by Roy Welborn on 7/12/23.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - Properties
    let animal : Animal
    //MARK: - Body
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//: End TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: End GroupBox
    }
}

//MARK: - Preview
struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
