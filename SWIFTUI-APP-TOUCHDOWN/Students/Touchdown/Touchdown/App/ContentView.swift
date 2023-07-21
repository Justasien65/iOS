//
//  ContentView.swift
//  Touchdown
//
//  Created by Roy Welborn on 7/19/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties

    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0)
                    {
                        FeaturedTabView()
                            .padding(.vertical, 20)
                            .frame(height: UIScreen.main.bounds.width / 1.475) // This will fix the layout rendering priority issue by using the screen's aspect ratio.
                        CategoryGridView()
                        FooterView()
                            .padding(.horizontal)
                    }//: End VStack
                })//: End ScrollView
            }//: End VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: End ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
            .previewLayout(.sizeThatFits)
    }
}
