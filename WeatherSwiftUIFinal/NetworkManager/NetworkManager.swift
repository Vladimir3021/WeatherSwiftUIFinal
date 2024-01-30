//
//  NetworkManager.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 29.01.2024.
//

import UIKit

class NetworkManager {

        func fetchDataWeather ()  {
            
            guard let urlWeaterTotal = urlWeaterTotal else { return }
                
            let session = URLSession(configuration: .default)
            session.dataTask(with: urlWeaterTotal, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)

        }

}

extension URL {
    init(_ string: StaticString) {
        self.init(string: "\(string)")!
    }
}

