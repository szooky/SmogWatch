//
//  CodableAirQuality.swift
//  SmogWatch
//
//  Created by Filip Szukala on 21/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

class CodableAirQuality: Decodable {
    let id: Int?
    let stCalcDate: String?
    let stIndexLevel: CodableIndexLevel?
    let stSourceDataDate: String?
    let so2CalcDate: String?
    let so2IndexLevel: CodableIndexLevel?
    let so2SourceDataDate: String?
    let no2CalcDate: Int?
    let no2IndexLevel: CodableIndexLevel?
    let no2SourceDataDate: String?
    let coCalcDate: String?
    let coIndexLevel: CodableIndexLevel?
    let coSourceDataDate: String?
    let pm10CalcDate: String?
    let pm10IndexLevel: CodableIndexLevel?
    let pm10SourceDataDate: String?
    let pm25CalcDate: String?
    let pm25IndexLevel: CodableIndexLevel?
    let pm25SourceDataDate: String?
    let o3CalcDate: String?
    let o3IndexLevel: CodableIndexLevel?
    let o3SourceDataDate: String?
    let c6H6CalcDate: String?
    let c6H6IndexLevel: CodableIndexLevel?
    let c6H6SourceDataDate: String?
    let stIndexStatus: Bool?
    let stIndexCRParam: String?
}

extension CodableAirQuality: CoreDatable {
    func saveToCoreData() {
        let newAirQuality: [String: Any] = [AirQualityCoreDataProperties.id: "\(id ?? 0)_\(stSourceDataDate ?? "")",
                                            AirQualityCoreDataProperties.stationId: id ?? 0,
                                            AirQualityCoreDataProperties.stCalcDate: stCalcDate ?? "",
                                            AirQualityCoreDataProperties.stIndexLevelId: stIndexLevel?.id ?? 0,
                                            AirQualityCoreDataProperties.stIndexLevelName: stIndexLevel?.indexLevelName ?? "",
                                            AirQualityCoreDataProperties.stSourceDataDate: stSourceDataDate ?? "",
                                            AirQualityCoreDataProperties.so2CalcDate: so2CalcDate ?? "",
                                            AirQualityCoreDataProperties.so2IndexLevelId: so2IndexLevel?.id ?? 0,
                                            AirQualityCoreDataProperties.so2IndexLevelName: so2IndexLevel?.indexLevelName ?? "",
                                            AirQualityCoreDataProperties.so2SourceDataDate: so2SourceDataDate ?? "",
                                            AirQualityCoreDataProperties.no2CalcDate: no2CalcDate ?? 0,
                                            AirQualityCoreDataProperties.no2IndexLevelId: no2IndexLevel?.id ?? 0,
                                            AirQualityCoreDataProperties.no2IndexLevelName: no2IndexLevel?.indexLevelName ?? "",
                                            AirQualityCoreDataProperties.no2SourceDataDate: no2SourceDataDate ?? "",
                                            AirQualityCoreDataProperties.coCalcDate: coCalcDate ?? "",
                                            AirQualityCoreDataProperties.coIndexLevelId: coIndexLevel?.id ?? 0,
                                            AirQualityCoreDataProperties.coIndexLevelName: coIndexLevel?.indexLevelName ?? "",
                                            AirQualityCoreDataProperties.coSourceDataDate: coSourceDataDate ?? "",
                                            AirQualityCoreDataProperties.pm10CalcDate: pm10CalcDate ?? "",
                                            AirQualityCoreDataProperties.pm10IndexLevelId: pm10IndexLevel?.id ?? 0,
                                            AirQualityCoreDataProperties.pm10SourceDataDate: pm10SourceDataDate ?? "",
                                            AirQualityCoreDataProperties.pm25CalcDate: pm25CalcDate ?? "",
                                            AirQualityCoreDataProperties.pm25IndexLevelId: pm25IndexLevel?.id ?? 0,
                                            AirQualityCoreDataProperties.pm25IndexLevelName: pm25IndexLevel?.indexLevelName ?? "",
                                            AirQualityCoreDataProperties.pm25SourceDataDate: pm25SourceDataDate ?? "",
                                            AirQualityCoreDataProperties.o3CalcDate: o3CalcDate ?? "",
                                            AirQualityCoreDataProperties.o3IndexLevelId: o3IndexLevel?.id ?? 0,
                                            AirQualityCoreDataProperties.o3IndexLevelName: o3IndexLevel?.indexLevelName ?? "",
                                            AirQualityCoreDataProperties.o3SourceDataDate: o3SourceDataDate ?? "",
                                            AirQualityCoreDataProperties.c6h6CalcDate: c6H6CalcDate ?? "",
                                            AirQualityCoreDataProperties.c6h6IndexLevelId: c6H6IndexLevel?.id ?? 0,
                                            AirQualityCoreDataProperties.c6h6IndexLevelName: c6H6IndexLevel?.indexLevelName ?? "",
                                            AirQualityCoreDataProperties.c6h6SourceDataDate: c6H6SourceDataDate ?? "",
                                            AirQualityCoreDataProperties.pm10IndexLevelName: pm10IndexLevel?.indexLevelName ?? ""]

        Database.shared.save(data: newAirQuality,
                             as: AirQualityCoreDataProperties.entityName,
                             primaryKey: AirQualityCoreDataProperties.id)
    }
}
