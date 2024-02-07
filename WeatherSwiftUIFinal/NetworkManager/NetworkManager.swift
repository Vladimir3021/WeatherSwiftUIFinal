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
        fetchDataWeather()
    }
    
    
     func fetchDataWeather() {
        guard let url = url else { return }
        // print(url)
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        let dataTask =  session.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}// 3
            guard let dataWeather = parseJSON(withData: data) else {return}// 2
            self.weatherData1 = dataWeather //1
            //print(dataWeather)
        }
        dataTask.resume()
        
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
    }
}




