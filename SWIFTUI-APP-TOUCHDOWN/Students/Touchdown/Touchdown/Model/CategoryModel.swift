//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Roy Welborn on 7/20/23.
//

import Foundation

struct Category: Codable, Identifiable
{
    let id: Int
    let name: String
    let image: String
}
