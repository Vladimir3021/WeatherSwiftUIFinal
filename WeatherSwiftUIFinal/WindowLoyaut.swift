//
//  WindowLoyaut.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 22.01.2024.
//

import SwiftUI

struct WindowLayaut: View {
    /// Description - Получаем ширину экрана и от нее строим ширину наших окон
    var widthUIScreen = UIScreen.main.bounds.width
    
    var quantity: Int = 25                   // заглушка
    var quantitySummaru: Int = 35            // заглушка
    var unitOfMeasure: String = "М/С"
    var imageSystemNameAndName: Image
    var name: String
    var description: String
    var unitOfMeasureDescription: String
    
    var body: some View {
        HStack {
            Spacer()
            //MARK: - левое окно
            ZStack {
                Color(#colorLiteral(red: 0.1199920788, green: 0.6115283127, blue: 1, alpha: 1))
                    .opacity(0.3)
                VStack(alignment: .center, spacing: nil, content: {
                    Text("\(imageSystemNameAndName)  \(name)")
                        .padding(.top, 5)// это макс. значение
                        .padding(.bottom, 5)// это макс. значение
                    Text("\(quantity) ").font(.largeTitle).bold() + Text("\(unitOfMeasure)").font(.title2).bold()
                    Spacer(minLength: 1)
                    Text("\(description) \(quantitySummaru ) \(unitOfMeasureDescription)" )
                        .padding(.bottom,10)
                    // При увеличении текста до 3 трок текст расширяется вверх, вместимость не более 3-х строк.
                })
            }
            .cornerRadius(20)
            //.frame(width: CGFloat(geo.size.width) / 3, height: 155) // Или вариант ниже
            //.frame(minWidth: 130, maxWidth: 320, maxHeight: 155)
            .frame(width: widthUIScreen / 2.2, height: 155)
            Spacer()
            //MARK: - правое окно
            ZStack {
                Color(#colorLiteral(red: 0.1199920788, green: 0.6115283127, blue: 1, alpha: 1))
                    .opacity(0.3)
                VStack(alignment: .center, spacing: nil, content: {
                    Text("\(imageSystemNameAndName)  \(name)")
                        .padding(.top, 5)// это макс. значение
                        .padding(.bottom, 5)// это макс. значение
                    Text("\(quantity) ").font(.largeTitle).bold() + Text("\(unitOfMeasure)").font(.title2).bold()
                    Spacer(minLength: 1)
                    Text("\(description) \(quantitySummaru ) \(unitOfMeasureDescription)" )
                        .padding(.bottom,10)
                    // При увеличении текста до 3 трок текст расширяется вверх, вместимость не более 3-х строк.
                })
            }
            .cornerRadius(20)
            //.frame(width: CGFloat(geo.size.width) / 3, height: 155) // Или вариант ниже
            //.frame(minWidth: 130, maxWidth: 320, maxHeight: 155)
            .frame(width: widthUIScreen / 2.2, height: 155)
            Spacer()
        }
    }
}

#Preview {
    WindowLayaut(imageSystemNameAndName:  Image(systemName:"wind"),
                 name: "ВЕТЕР",
                 description: "Порыв ветра до -",
                 unitOfMeasureDescription: "м/с")
}
