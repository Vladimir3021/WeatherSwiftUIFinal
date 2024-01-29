//
//  ScrolingForHour.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 29.01.2024.
//

import SwiftUI

struct ScrolingForHour: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false){
            HStack {
                ForEach(sectionData) { item in
                    WindowWeatherForHour(time: item.time, imageWeather: item.image, temperature: item.temperature)
                    //Text("\(item.id)")
                }
            }
            
        }//.padding(20)
    }
}

#Preview {
    ScrolingForHour()
}
