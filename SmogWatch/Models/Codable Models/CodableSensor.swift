//
//  CodableSensor.swift
//  SmogWatch
//
//  Created by Filip Szukala on 22/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

class CodableSensor: Decodable {
    let id: Int?
    let stationId: Int?
    let parameters: CodableSensorParameters?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case stationId = "stationId"
        case parameters = "param"
    }
}

extension CodableSensor: CoreDatable {
    func saveToCoreData() {
        let newSensor: [String: Any] = [SensorCoreDataProperties.id: id ?? 0,
                                        SensorCoreDataProperties.stationId: stationId ?? 0,
                                        SensorCoreDataProperties.name: parameters?.name ?? "",
                                        SensorCoreDataProperties.formula: parameters?.formula ?? "",
                                        SensorCoreDataProperties.code: parameters?.code ?? "",
                                        SensorCoreDataProperties.parameterId: parameters?.id ?? 0]
        Database.shared.save(data: newSensor,
                             as: SensorCoreDataProperties.entityName,
                             primaryKey: SensorCoreDataProperties.id)
    }
}
