//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Roy Welborn on 12/15/22.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: PROPERTIES
    var fruit: Fruit
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // HEADLINE
                        FruitHeaderView(fruit: fruit)
                        
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColor[1])
                        
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADLINE
                        Text("Lean More About \(fruit.title)")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColor[1])

                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATION VIEW
        .navigationViewStyle(StackNavigationViewStyle())
    }//: BODY
}

// MARK: PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewDevice("iPhone 12 Pro")
            .preferredColorScheme(.dark)
    }
}
