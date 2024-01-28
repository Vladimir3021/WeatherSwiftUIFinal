//
//  WindowHourlyForecast.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 28.01.2024.
//

import SwiftUI

struct WindowHourlyForecast: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 200,  maxHeight: 200, alignment: .center)
            .overlay(alignment: .topLeading, content: {
                Text("Placeh older Pla ceholder Plac eh older Place holder Placeholder older Pla ceholder Plac eh older Place holder Placeholder")
                    .foregroundStyle(.black)
                    .padding(10)
                    .lineLimit(2)
            })
            .overlay(alignment: .top, content: {
                Divider()
                    .frame(height: 2)
                    .overlay(Color.gray)
                    .padding(EdgeInsets( top: 60, leading: 20, bottom: 0, trailing: 20))
                
            })
        
            .padding(18)
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 0.5990273179)))
    }
}

var loayt: some View {
    Text(verbatim: "Placeholder")
}
#Preview {
    WindowHourlyForecast()
}
