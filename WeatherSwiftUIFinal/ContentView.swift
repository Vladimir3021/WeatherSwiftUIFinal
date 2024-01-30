//
//  ContentView.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 22.01.2024.
//

import SwiftUI

//@available(iOS 17.0, *)
struct ContentView: View {
    var body: some View {
        ScrollView {

            WindowHourlyForecast()
            HStack {
                if #available(iOS 16.0, *) {
                    WindowVisibility()
                } else {
                    VisibilityForLessiOs16()
                }
                if #available(iOS 16.0, *) {
                    WindowWind()
                } else {
                    WindViewForLessiOs16()
                }
            }
        }
    }
}

#Preview {
  
        ContentView()
 
}
// тест коммит3
