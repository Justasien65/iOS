//
//  LocationModel.swift
//  Africa
//
//  Created by Roy Welborn on 7/14/23.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable
{
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // Computer Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

