//
//  MapViewController.swift
//  SmogWatch
//
//  Created by Filip Szukala on 25/10/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import UIKit

class SmogMapViewController: UIViewController {
    let mainView = SmogMapView()
    let viewModel = SmogMapViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        DataFlowManager.shared.fetchSmogDataFromNearestStation(withLocationAuthorizationRequestOnViewController: self)
        setupView()
    }

    private func setupView() {
        view = mainView
        mainView.setupView()
    }
}

