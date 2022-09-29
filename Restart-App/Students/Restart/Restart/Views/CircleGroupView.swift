//
//  CircleGroupView.swift
//  Restart
//
//  Created by Roy Welborn on 9/28/22.
//

import SwiftUI

struct CircleGroupView: View {
    
    // MARK: Property
    @State var ShapeColor: Color
    @State var ShapeDensity: Double
    
    // MARK: Body
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeDensity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeDensity), lineWidth: 80)
            .frame(width: 260, height: 260, alignment: .center)    }
    } // End ZStack
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(ShapeColor: .white, ShapeDensity: 0.2)
        }
    }
}
