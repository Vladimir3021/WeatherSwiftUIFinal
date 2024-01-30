//
//  Url.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 30.01.2024.
//

import Foundation

let url: () = {
    let key = "bd918ef11fcc70e0e731767cbf2b0370" // ключ для сайта https://openweathermap.org/api
    let kharkivLatitude = "49.9808100" // широта
    let kharkivLongititude = "36.2527200" // долгота
    let unitsMetric = "&units=metric" //  еденицы измерения метрические
    let lang = "&lang=ru" // вывод результата на указаном языке
    /// Порядок следования `unitsMetric` и `lang` значения не имеет

    let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?lat=49.9808100&lon=36.2527200&appid=bd918ef11fcc70e0e731767cbf2b0370&units=metric=&lang=ru")
    // это даст URL как необязательный
    let url2 = URL(string: "https://api.openweathermap.org/data/2.5/forecast?lat=49.9808100&lon=36.2527200&appid=bd918ef11fcc70e0e731767cbf2b0370&lang=ru&units=metric")
    // это даст URL как необязательный

    var components = URLComponents()
    components.scheme = "https"
    components.host = "api.openweathermap.org"
    components.path = "/data/2.5/forecast"
 
    let queryLatitude = URLQueryItem(name: "lat", value:"49.9808100")
    let queryLongitude = URLQueryItem(name: "lon", value:"36.2527200")
    let queryKey = URLQueryItem(name: "appid", value: "bd918ef11fcc70e0e731767cbf2b0370")
    let queryLanguage = URLQueryItem(name: "lang", value: "ru")
    let queryUnits = URLQueryItem(name: "units", value: "metric")

    components.queryItems = [queryLatitude, queryLongitude, queryKey, queryLanguage, queryUnits]
    let myUrl = components.url
}()
