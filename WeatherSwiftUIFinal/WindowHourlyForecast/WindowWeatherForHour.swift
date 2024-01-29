//
//  WindowWeatherForHours.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 29.01.2024.
//

import SwiftUI

struct WindowWeatherForHour: View {
    
//    var time = "сейчас"
//    var imageWeather = Image(systemName: "cloud.snow.fill")
//    var temperature = -5
    var time: String
    var imageWeather: Image
    var temperature: Int
    
    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            Text("\(time)")
                .padding(.all, 20)
            Spacer()
            Text("\(imageWeather) ")
            Spacer()
            Text("\(temperature) \u{00B0}")
                .padding(.bottom, 10)
                .font(.title3)
        })
        .frame(minWidth: 50,  maxWidth: .infinity, minHeight: 140,  maxHeight: 140, alignment: .center)
        .fixedSize()
        .background(Color(#colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1)) )
        .clipShape(RoundedRectangle(cornerRadius: 15), style: FillStyle())
        //.padding()
 
    }
}

#Preview {
    WindowWeatherForHour(time: "сейчас", imageWeather: Image(systemName: "cloud.snow.fill"), temperature: -5)
}
