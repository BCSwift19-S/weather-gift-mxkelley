//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Michael X Kelley on 3/18/19.
//  Copyright © 2019 Michael X Kelley. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherLocation {
    var name = ""
    var coordinates = ""
    var currentTemp = "--"
    var currentSummary = ""
    
    func getWeather(completed: @escaping () -> ()) {
        
        let weatherURL = urlBase + urlAPIKey + coordinates
//        print(weatherURL)
        
        Alamofire.request(weatherURL).responseJSON {response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
//                print("***** JSON: \(json)")
                if let temperature = json["currently"]["temperature"].double {
//                    print("***** Temperature inside getWeather = \(temperature)")
                    let roundedTemp = String(format: "%3.f", temperature)
                    self.currentTemp = roundedTemp + "°"
                } else {
                    print("Could not return a temperature")
                }
                if let summary = json["daily"]["summary"].string {
                    self.currentSummary = summary
//                    print("The summary for \(self.name) is \(self.currentSummary)")
                } else {
                    print("Could not return a summary")
                }
            case .failure(let error):
                print(error)
            }
            completed()
        }
    }
}
