//
//  FetchDataWeather.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 10.02.2024.
//

import Foundation

func fetchDataWeather(complition: @escaping (ModelWeather) -> ()) {
   guard let url = url else { return }

   let config = URLSessionConfiguration.default
   let session = URLSession(configuration: config)
   let dataTask =  session.dataTask(with: url) { (data, response, error) in
       guard let data = data else {return}// 3
       guard let dataWeather = parseJSON(withData: data) else {return}// 2
       complition( dataWeather )//1

   }
   dataTask.resume()
   
   
}
