//
//  WeatherModel.swift
//  Clima
//
//  Created by Timothy Mosby on 1/28/26.
//  Copyright © 2026 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        var conditionName = ""
        switch conditionId {
        case 200...232:
            conditionName = "cloud.bolt.fill" //Thunderstorm
            break
        case 300...321:
            conditionName = "cloud.drizzle.fill" //Drizzle
            break
        case 500...531:
            conditionName = "cloud.rain.fill" //Rain
            break
        case 600...622:
            conditionName = "cloud.snow.fill" //Snow
            break
        case 701:
            conditionName = "cloud.fog.fill" //Mist
            break
        case 711:
            conditionName = "smoke.fill" //Smoke
            break
        case 721:
            conditionName = "sun.haze.fill" //Haze
            break
        case 731:
            conditionName = "sun.dust.fill" //Dust
            break
        case 741:
            conditionName = "cloud.fog.fill" //Fog
            break
        case 751:
            conditionName = "sun.dust.fill" //Sand
            break
        case 761:
            conditionName = "sun.dust.fill" //Dust
            break
        case 762:
            conditionName = "sun.dust.fill" //Ash
            break
        case 771:
            conditionName = "tropicalstorm.circle.fill" //Squall
            break
        case 781:
            conditionName = "tornado.circle.fill"
            break
        case 800:
            conditionName = "sun.max.fill" //Clear
            break
        case 801...804:
            conditionName = "cloud.fill" //Clouds
            break
        default:
            conditionName = "cloud.fill" //Unknown
            break
        }
        
        return conditionName
    }
}
