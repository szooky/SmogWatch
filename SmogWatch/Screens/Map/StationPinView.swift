//
//  StationPinView.swift
//  SmogWatch
//
//  Created by Filip Szukala on 06/11/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import MapKit

class StationPinView: MKAnnotationView {
    static let identifier = "StationPinView"


    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)

        clusteringIdentifier = StationPinClusterView.identifier
        backgroundColor = .red
        bounds = CGRect(x: 0, y: 0, width: 70, height: 70)
        self.displayPriority = .defaultLow
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()

        clusteringIdentifier = StationPinClusterView.identifier
    }
}
