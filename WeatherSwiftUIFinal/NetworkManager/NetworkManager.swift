//
//  NetworkManager.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 29.01.2024.
//

import UIKit

class NetworkManager {
    let configuration = URLSessionConfiguration.default
    
    let url = URL(string: "https://bit.ly/2LMtByx")
    
    func fetchWeatherData() {
        guard  let forecastUrl = URL(string: "https://applelives.com/wp-content/uploads/2016/03/iPhone-SE-11.jpeg") else {return}
        let session = URLSession(configuration: .default)
        let session2 = URLSession(configuration: configuration)
        session.dataTask(with: forecastUrl)
        session2.dataTask(with: forecastUrl)
    }
    
    
    
    
    

}
