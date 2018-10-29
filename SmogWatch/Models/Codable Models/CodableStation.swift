//
//  CodableStation.swift
//  SmogWatch
//
//  Created by Filip Szukala on 21/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

class CodableStation: Decodable {
    let id: Int?
    let stationName: String?
    let gegrLat: String?
    let gegrLon: String?
    let city: CodableCity?
    let addressStreet: String?
}

extension CodableStation: CoreDatable {
    func saveToCoreData() {
        let newStation: [String: Any] = [StationCoreDataProperties.id: id ?? 0,
                                         StationCoreDataProperties.name: stationName ?? "",
                                         StationCoreDataProperties.latitude: gegrLat ?? "",
                                         StationCoreDataProperties.longitude: gegrLon.nilAsEmpty,
                                         StationCoreDataProperties.address: addressStreet ?? "",
                                         StationCoreDataProperties.cityId: city?.id ?? 0,
                                         StationCoreDataProperties.cityName: city?.name ?? "",
                                         StationCoreDataProperties.commune: city?.commune?.communeName ?? "",
                                         StationCoreDataProperties.district: city?.commune?.districtName ?? "",
                                         StationCoreDataProperties.province: city?.commune?.provinceName ?? ""]

        Database.shared.save(data: newStation,
                             as: StationCoreDataProperties.entityName,
                             primaryKey: StationCoreDataProperties.id)
    }
}
