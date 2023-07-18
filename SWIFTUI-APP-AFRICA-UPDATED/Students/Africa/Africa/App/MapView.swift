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
            //MARK: (A) Old style (always static)
            // MapPin(coordinate: item.location, tint: .accentColor)
            //MARK: (B) New Style
            //MapMarker(coordinate: item.location, tint: .accentColor)
            //MARK: (C) Custom Basic Annotation
            //MapAnnotation(coordinate: item.location) {
            //    Image("logo")
            //        .resizable()
            //        .scaledToFit()
            //        .frame(width: 32, height: 32, alignment: .center)
            //MARK: (D) Complex Map Annotation
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }) 
        //: End MAP
        .overlay (
            HStack (alignment: .center, spacing: 12){
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude: ")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    }//: End HStack
                    Divider()
                    HStack {
                        Text("Longitude: ")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    }//: End HStack
                    // Divider()
                }//: End VStack
            } //: End HStack
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(Color.black
                .cornerRadius(8)
                .opacity(0.6)
            )
            .padding()
            , alignment: .top
            
        )
    }
}
//MARK: - Preview
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
