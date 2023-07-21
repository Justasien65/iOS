//
//  SectionView.swift
//  Touchdown
//
//  Created by Roy Welborn on 7/20/23.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Properties
    @State var rotateClockwise : Bool
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90: -90))
            Spacer()
        }//: End VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    } //: End Body
}

// MARK: - Preview
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
