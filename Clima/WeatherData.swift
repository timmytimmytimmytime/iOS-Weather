//
//  WeatherData.swift
//  Clima
//
//  Created by Timothy Mosby on 1/28/26.
//  Copyright © 2026 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    var name: String
    var main: Main
    var weather: [Weather]
}

struct Main: Decodable {
    var temp: Double
}

struct Weather: Decodable {
    var description: String
    var id: Int
}
