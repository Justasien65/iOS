//
//  CenterModifier.swift
//  Africa
//
//  Created by Roy Welborn on 7/17/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
