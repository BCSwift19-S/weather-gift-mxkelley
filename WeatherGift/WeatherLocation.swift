//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Michael X Kelley on 3/18/19.
//  Copyright © 2019 Michael X Kelley. All rights reserved.
//

import Foundation
import Alamofire

class WeatherLocation {
    var name = ""
    var coordinates = ""
    
    func getWeather() {
        
        let weatherURL = urlBase + urlAPIKey + coordinates
        print(weatherURL)
        
        Alamofire.request(weatherURL).responseJSON {response in print(response)}
    }
}
