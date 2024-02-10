//
//  NetworkManager.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 29.01.2024.
//

import Foundation

class NetworkManager: ObservableObject {
    

     // начальная инициализация затем вызов функции fetchDataWeather и запись фактических данных о погоде
    @Published  var weatherData1 = ModelWeather(cod: "cod", message: 1, cnt: 1, list: [List(dt: 1, main: MainClass(temp: 1, feelsLike: 1, tempMin: 1, tempMax: 1, pressure: 1, seaLevel: 1, grndLevel: 1, humidity: 1, tempKf: 1), weather: [Weather(id: 1, main: MainEnum.clouds, description: Description.freezingRain, icon: Icon.the04D)], clouds: Clouds.init(all: 1), wind: Wind(speed: 1, deg: 1, gust: 1), visibility: 1, pop: 1, sys: Sys(pod: Pod.d), dtTxt: "dtTxt", rain: Rain?.none, snow: Rain?.none)], city: City(id: 1, name: "name", coord: Coord(lat: 1, lon: 1), country: "countru", population: 1, timezone: 1, sunrise: 1, sunset: 1))

    init() {
            fetchDataWeather { data in
                DispatchQueue.main.async { [self] in
                    self.weatherData1 = data
                }
            }
        }
    
    
    
  
}




