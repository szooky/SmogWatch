//
//  ViewController.swift
//  SmogWatch
//
//  Created by Filip Szukala on 17/07/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        loadStations()
    }

    private func loadStations() {
        SmogAPI().send(GetStations()) { response in
            print("GetStations finished:")

            switch response {
            case .success(let stations):
                for station in stations {
                    print("  Title: \(station.stationName ?? "Unnamed character")")
                    print("  Title: \(station.id ?? 0)")

                }
            case .failure(let error):
                print(error)
            }
        }
    }


}

