//
//  MapView.swift
//  Africa
//
//  Created by Roy Welborn on 7/11/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: - Properties
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude:    16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    //MARK: - Body
    var body: some View {
        //MARK: 1.. Basic Map
        Map(coordinateRegion: $region)
        //MARK: 2.. Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {
            item in
            //MARK: (A) Pin old style (always static)
            MapPin(coordinate: item.location, tint: .accentColor)
            
        })
        
    }
}
//MARK: - Preview
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
