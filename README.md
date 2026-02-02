# Swift Weather App

iOS weather application with real-time data from OpenWeatherMap API. Supports location-based forecasts via Core Location and manual city search.

## Demo
<div>
  <img src="MyWeatherDemo.gif" alt="Weather App Demo" height="300" style="border: 2px solid #ddd; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1);"/>
</div>



## Features

- **GPS-based weather detection** - Automatic location tracking using Core Location framework
- **City search functionality** - Query weather data for any location worldwide
- **Dark mode support** - Full system appearance integration
- **Real-time API integration** - Live weather data via OpenWeatherMap REST API
- **SF Symbols weather icons** - Dynamic icon rendering based on condition codes

## Technical Implementation

**Architecture:** MVC pattern with separate model, view, and networking layers

**Networking:** 

- URLSession for asynchronous HTTP requests
- Codable protocol for JSON deserialization
- Error handling for network failures and invalid responses

**Location Services:**

- Core Location framework for GPS coordinates
- CLLocationManagerDelegate for location updates
- User permission handling for location access

**Concurrency:**

- Grand Central Dispatch for thread management
- Main thread UI updates via DispatchQueue.main
- Background networking operations

**Data Parsing:**

- Native Encodable/Decodable protocols
- Type-safe JSON mapping to Swift structs
- Weather condition code mapping to SF Symbols

## Weather Condition Mapping
```swift
switch conditionID {
    case 200...232: return "cloud.bolt"      // Thunderstorm
    case 300...321: return "cloud.drizzle"   // Drizzle
    case 500...531: return "cloud.rain"      // Rain
    case 600...622: return "cloud.snow"      // Snow
    case 701...781: return "cloud.fog"       // Atmosphere
    case 800: return "sun.max"               // Clear
    case 801...804: return "cloud.bolt"      // Clouds
    default: return "cloud"
}
```

## API Integration

Uses OpenWeatherMap Current Weather Data API with city name and coordinate-based queries.