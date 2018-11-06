//
//  Station+CoreDataProperties.swift
//  SmogWatch
//
//  Created by Filip Szukala on 28/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//
//

import Foundation
import CoreData
import CoreLocation


extension Station {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Station> {
        return NSFetchRequest<Station>(entityName: StationCoreDataProperties.entityName)
    }

    @NSManaged public var id: Int32
    @NSManaged public var name: String?
    @NSManaged public var latitude: String?
    @NSManaged public var longitude: String?
    @NSManaged public var address: String?
    @NSManaged public var cityId: Int32
    @NSManaged public var cityName: String?
    @NSManaged public var commune: String?
    @NSManaged public var district: String?
    @NSManaged public var province: String?

    var coordinates: CLLocationCoordinate2D? {
        guard let latitude = latitude else { return nil }
        guard let longitude = longitude else { return nil }
        guard let latitudeDouble = Double(latitude) else { return nil }
        guard let longitudeDouble = Double(longitude) else { return nil }
        guard let latitudeDegrees = CLLocationDegrees(exactly: latitudeDouble) else { return nil }
        guard let longitudeDegrees = CLLocationDegrees(exactly: longitudeDouble) else { return nil }
        return CLLocationCoordinate2D(latitude: latitudeDegrees, longitude: longitudeDegrees)
    }
}

class StationCoreDataProperties {
    static let entityName = "Station"
    static let id = "id"
    static let name = "name"
    static let latitude = "latitude"
    static let longitude = "longitude"
    static let address = "address"
    static let cityId = "cityId"
    static let cityName = "cityName"
    static let commune = "commune"
    static let district = "district"
    static let province = "province"
}
