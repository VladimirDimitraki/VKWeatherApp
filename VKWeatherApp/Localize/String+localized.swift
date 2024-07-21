//
//  String+localized.swift
//  VKWeatherApp
//
//  Created by Melania Dababi on 7/21/24.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "\(self) not found in Localizated.strings")
    }
}
