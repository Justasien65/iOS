//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Roy Welborn on 7/20/23.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>( _ file: String) -> T {
        
        // 1. Locate the JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to load \(file) in bundle")
        }
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
                fatalError("Failed to load \(file) in bundle")
        }
        // 3. Create a decoder
        let decoder = JSONDecoder()
        // 4. Create a property for the deocded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to load \(file) in bundle")
        }
        // 5. return the ready-to-use data
            return decodedData
        
    }
}
