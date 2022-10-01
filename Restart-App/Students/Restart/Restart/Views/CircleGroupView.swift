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
    @State private var isAnimating: Bool = false
    
    
    // MARK: Body
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeDensity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeDensity), lineWidth: 80)
            .frame(width: 260, height: 260, alignment: .center)
        }  //: ZStack
        .opacity(isAnimating ? 1 : 0)
        .blur(radius: isAnimating ? 1 : 10)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform:
                    {
                isAnimating = true
            })
        }
    } //: Body

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(ShapeColor: .white, ShapeDensity: 0.2)
        }
    }
}
