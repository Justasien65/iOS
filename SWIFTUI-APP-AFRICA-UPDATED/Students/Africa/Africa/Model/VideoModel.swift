//
//  VideoModal.swift
//  Africa
//
//  Created by Roy Welborn on 7/11/23.
//

import Foundation

struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed Property
  var thumbnail: String {
    "video-\(id)"
  }
}
