//
//  StationPinView.swift
//  SmogWatch
//
//  Created by Filip Szukala on 06/11/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import MapKit
import UIKit

class StationPinView: MKAnnotationView {
    static let identifier = "StationPinView"

    let emojiLabel: UILabel = {
        let label = UILabel()
        label.text = "😷"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 50.0)
        return label
    }()

    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)

        clusteringIdentifier = StationPinClusterView.identifier
        bounds = CGRect(x: 0, y: 0, width: 50, height: 50)
        self.displayPriority = .defaultLow
        setupEmojiLabel()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()

        clusteringIdentifier = StationPinClusterView.identifier
    }

    private func setupEmojiLabel() {
        addSubview(emojiLabel)
        emojiLabel.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
