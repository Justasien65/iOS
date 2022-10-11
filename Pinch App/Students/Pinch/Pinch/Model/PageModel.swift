//
//  PageModel.swift
//  Pinch
//
//  Created by Roy Welborn on 10/10/22.
//

import Foundation

struct Page: Identifiable
{
    let id: Int
    let imageName : String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
