//
//  FruitModel.swift
//  Fructus
//
//  Created by Roy Welborn on 10/24/22.
//

import SwiftUI

// MARK: FRUITS DATA MODEL

struct Fruit: Identifiable {
    
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
    
}
