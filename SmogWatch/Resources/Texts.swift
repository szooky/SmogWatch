//
//  Localizables.swift
//  SmogWatch
//
//  Created by Filip Szukala on 08/12/2018.
//  Copyright © 2018 Filip Szukala. All rights reserved.
//

import Foundation

struct Texts {
     let general = General()
    let localizationDeniedAlert = LocalizationDeniedAlert()

    struct General {
        static let cancel = "Anuluj"
    }

    struct LocalizationDeniedAlert {
        static let title = "Brak zgody na lokalizację użytkownika"
        static let message = "Nie zezwoliłeś wcześniej na dostęp do lokalizacji, by to zmienić przejdź do ustawień i zezwól aplikacji na korzystanie z lokalizacji użytkownika"
        static let settingsAction = "Przejdź do ustawień"
    }
}
