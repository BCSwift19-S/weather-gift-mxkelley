//
//  TimeInterval+format.swift
//  WeatherGift
//
//  Created by Michael X Kelley on 3/20/19.
//  Copyright © 2019 Michael X Kelley. All rights reserved.
//

import Foundation

extension TimeInterval {
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
        let usableDate = Date(timeIntervalSince1970: self)
        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let dateString = dateFormatter.string(from: usableDate)
        return dateString
    }
}
