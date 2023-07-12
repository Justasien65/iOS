//
//  HeadingView.swift
//  Africa
//
//  Created by Roy Welborn on 7/11/23.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - Properties
    var headingImage: String
    var headingText: String
    // MARK: - Body
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }//: End HStack
        .padding(.vertical)
    }
}
// MARK: Preview
struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Winderness In Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
