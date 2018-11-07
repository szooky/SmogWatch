//
//  StationAnnotation.swift
//  SmogWatch
//
//  Created by Filip Szukala on 06/11/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import MapKit

class StationAnntotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var id: Int?

    init(station: Station) {
        id = Int(station.id)
        coordinate = station.coordinates?.coordinate ?? CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)
        title = station.address
    }
}
