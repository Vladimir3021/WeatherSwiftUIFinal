//
//  WeatherSwiftUIFinalApp.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 22.01.2024.
//

import SwiftUI

@main
struct WeatherSwiftUIFinalApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView()
            if #available(iOS 16.0, *) {
                WindowWindTest()
            } else {
                ContentView()
            }
        }
    }
}
