//
//  CoverImageView.swift
//  Africa
//
//  Created by Roy Welborn on 7/11/23.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - Properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            } //: End ForEach
        } //: End TabView
        .tabViewStyle(PageTabViewStyle())
    }
}
// MARK: - Body
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
