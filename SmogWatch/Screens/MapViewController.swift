//
//  MapViewController.swift
//  SmogWatch
//
//  Created by Filip Szukala on 25/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DataFlowManager.shared.fetchSmogDataFromNearestStation(withLocationAuthorizationRequestOnViewController: self)
    }
}

