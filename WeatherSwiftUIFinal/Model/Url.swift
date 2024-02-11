//
//  Url.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 30.01.2024.
//

import Foundation

/// `Создание Url двумя разными способами.`
/// `Вариант - 1`
///
/// - Description - Создание Url методом сложения частей.
let urlWeaterTotal: URL? = {
    
    let scheme = "https://"
    let host = "api.openweathermap.org"
    let path = "/data/2.5/forecast?"
    let kharkivLatitude = "lat=49.9808100" // широта
    let kharkivLongititude = "&lon=36.2527200&" // долгота
    let key = "appid=bd918ef11fcc70e0e731767cbf2b0370&" // ключ для сайта https://openweathermap.org/api
   
    //let lang = "lang=ru&" // вывод результата на указаном языке
    let unitsMetric = "units=metric" //  еденицы измерения метрические
   
    /// Порядок следования `unitsMetric` и `lang` значения не имеет
    let urlInside = scheme + host + path + kharkivLatitude + kharkivLongititude + key  + unitsMetric

    // это даст URL как необязательный
    let urlTotal = URL(string: urlInside)
    // это даст URL как необязательный
    return urlTotal
    
}()
// https://api.openweathermap.org/data/2.5/forecast?lat=49.9808100&lon=36.2527200&appid=bd918ef11fcc70e0e731767cbf2b0370&units=metric
/// `Вариант - 2`
/// - Description -  Создание url через  `URLComponents` 
var url =   {
    
      var components = URLComponents()
      components.scheme = "https"
      components.host = "api.openweathermap.org"
      components.path = "/data/2.5/forecast"
      
      let queryLatitude = URLQueryItem(name: "lat", value:"49.9808100")
      let queryLongitude = URLQueryItem(name: "lon", value:"36.2527200")
      let queryKey = URLQueryItem(name: "appid", value: "bd918ef11fcc70e0e731767cbf2b0370")
      //let queryLanguage = URLQueryItem(name: "lang", value: "ru")
      let queryUnits = URLQueryItem(name: "units", value: "metric")
      
      components.queryItems = [queryLatitude, queryLongitude, queryKey,  queryUnits]
      let url = components.url
   return url
}()
