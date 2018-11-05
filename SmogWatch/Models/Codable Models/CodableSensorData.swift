//
//  CodableSensorData.swift
//  SmogWatch
//
//  Created by Filip Szukala on 22/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

class CodableSensorData: Decodable {
    let key: String?
    let parametersData: [CodableParameterData?]?
    var stationId: Int?

    enum CodingKeys: String, CodingKey {
        case key = "key"
        case parametersData = "values"
    }
}

extension CodableSensorData: CoreDatable {
    func saveToCoreData() {
        guard let parameters = parametersData else { return }
        guard let stationId = stationId else { return }

        for parameter in parameters {
            let newParameter: [String: Any] = [SmogDataCoreDataProperties.id: "\(stationId)_\(key ?? "")_\(parameter?.date ?? "")",
                                             SmogDataCoreDataProperties.parameterName: key ?? "",
                                             SmogDataCoreDataProperties.stationId: stationId,
                                             SmogDataCoreDataProperties.date: parameter?.date ?? "",
                                             SmogDataCoreDataProperties.value: parameter?.value ?? 0.0]

            Database.shared.save(data: newParameter,
                                 as: SmogDataCoreDataProperties.entityName,
                                 primaryKey: SmogDataCoreDataProperties.id)
        }
    }
}
