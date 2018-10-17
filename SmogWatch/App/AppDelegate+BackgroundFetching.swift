//
//  AppDelegate+BackgroundFetching.swift
//  SmogWatch
//
//  Created by Filip Szukala on 01/08/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import UIKit

extension AppDelegate {
    func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {

        SmogAPI().send(GetStationData(stationId: 92)) { response in
            print("\nGetStationData finished:")

            switch response {
            case .success(let sensors):
                dump(sensors)
            case .failure(let error):
                print(error)
            }
        }


    }
}

