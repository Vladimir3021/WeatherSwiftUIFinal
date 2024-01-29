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
                ForEach(0 ..< 15) { item in
                    WindowWeatherForHours()
                }
            }
        }//.padding(20)
    }
}

#Preview {
    ScrolingForHour()
}
