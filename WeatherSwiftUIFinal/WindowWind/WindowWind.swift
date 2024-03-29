//
//  WindowWind.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 24.01.2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct WindowWind: View {
    @ObservedObject var wind: NetworkManager
    
    let placeholder = "Заполнит ель тек ста Заполни тель текста За полнитель тек ста"
    // конст. содержащая углы прямоугольника с разными углами закругления для правого окна
    let radiiTrailingWindow = RectangleCornerRadii(topLeading: 20, bottomLeading: 20, bottomTrailing: 20, topTrailing: 20)
    
    var body: some View {
        ZStack {
            UnevenRoundedRectangle(cornerRadii: radiiTrailingWindow, style: .continuous)
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 0.5990273179)))
            VStack {
                Text(Image(systemName:"wind"))
                    .font(.title3)
                    .fontWeight(.black) +
                Text(verbatim: "Ветер")
                    .font(.title3)
                    .fontWeight(.black)
                Spacer()
                HStack(alignment: .center, spacing: 10) {
                    Text("\(wind.weatherData1.list[0].wind.speed)")
                   // Text("\(wind.weatherData1.message)")
                    //Text("\(24)")
                        .font(.title3)
                        .fontWeight(.black)
                    Text(verbatim: "М/С")
                        .font(.title3)
                        .fontWeight(.black)
                }
                Spacer()
                Text(verbatim: "\(placeholder)")
                    .font(.subheadline)
                    .lineLimit(4)
            }
        }
        .frame(minWidth: 160, maxWidth: 360, minHeight: 200, maxHeight:200)
        .padding()
    }
}
//
//#Preview {
//    
//    if #available(iOS 16.0, *) {
//        WindowWind(wind: <#NetworkManager#>)
//    } else {
//Text("ff")    }
//   
//}
