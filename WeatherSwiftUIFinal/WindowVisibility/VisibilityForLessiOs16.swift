//
//  VisibilityForLessiOs16.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 24.01.2024.
//

import SwiftUI

struct VisibilityForLessiOs16: View {
   // @EnvironmentObject var visibility: WeatherViewModel
    
    var quantity: Int = 25
    var unitOfMeasure: String = "КМ."
    var imageSystemNameAndName: Image = Image(systemName:"eyes")
    var name: String = "ВИДИМОСТЬ"
    var description: String = "Видимость снижена из за легкой дымки из за легкой дымки"
    //var geometryScreenContentView: GeometryProxy
    let visibility = 34
    var widthUIScreen = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1199920788, green: 0.6115283127, blue: 1, alpha: 1))
                .opacity(0.3)
            VStack(alignment: .center, spacing: nil, content: {
                    Text("\(imageSystemNameAndName) \(name)")
                .padding(.top, 5)// это макс. значение
                .padding(.bottom, 5)
                // это макс. значение
                Text("\(visibility)").font(.largeTitle).bold() + Text("\(unitOfMeasure)").font(.title2).bold()
                Spacer(minLength: 1)
                Text("\(description) " )
                    .lineLimit(2)
                     .padding(.bottom,10)
                     
                // При увеличении текста до 3 cтрок текст расширяется вверх, вместимость не более 3-х строк.
            })
        }
        .cornerRadius(20)
        //.frame(width: widthUIScreen / 2.2, height: 155)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 155, maxHeight: 155)
        .padding()
    }
}

#Preview {
    VisibilityForLessiOs16()
}
