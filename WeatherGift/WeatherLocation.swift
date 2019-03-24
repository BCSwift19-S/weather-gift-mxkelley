//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Michael X Kelley on 3/24/19.
//  Copyright © 2019 Michael X Kelley. All rights reserved.
//

import Foundation

class WeatherLocation: Codable {
    var name = ""
    var coordinates = ""
    
    init(name: String, coordinates: String) {
        self.name = name
        self.coordinates = coordinates
    }
}
