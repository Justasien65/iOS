//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Roy Welborn on 7/20/23.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - Properties

    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }//: End Loop
            })//: End LazyHGrid
            .frame(height: 148)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//: End ScrollView
    }
}

// MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
