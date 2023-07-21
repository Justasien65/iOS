//
//  Constant.swift
//  Touchdown
//
//  Created by Roy Welborn on 7/19/23.
//

import SwiftUI


// DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
// COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)
// LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacking: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacking), count: 2)
}
// UX
// API
// IMAGE
// FONT
// STRING
// MISC
