//
//  JsonDecoding.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 10.02.2024.
//

import Foundation

/// - Description Метод для распарсивания данных полученых из сети
/// - Parameter data: data бинарные данные в формате джейсон о погоде
/// - Returns:
func parseJSON(withData data: Data) -> ModelWeather? {
    let decoder = JSONDecoder()
    do {
        
        /// `dataWeather` - обьект типа: CurrentWeatherData
        let dataWeather = try decoder.decode(ModelWeather.self, from: data)
        
        return dataWeather
    } catch let error as NSError {
        print("error.localizedDescription - \(error.localizedDescription)")
    }
    return nil
}
