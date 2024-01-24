//
//  WindViewForiOs16.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 24.01.2024.
//

import SwiftUI

struct WindViewForLessiOs16: View {
   // @EnvironmentObject var winds: WeatherViewModel // получаем обьект данных из среды.
    let windsspeed = 27
    let windsgust = 22
    /// Description - Получаем ширину экрана и от нее строим ширину наших окон
    var widthUIScreen = UIScreen.main.bounds.width
    //var quantity: Double = 25
   // var quantitySummaru: Int = 35
    var unitOfMeasure: String = "М/С"
    var imageSystemNameAndName: Image = Image(systemName:"wind")
    var name: String = "ВЕТЕР"
    var description: String = "Порыв   ветра   до "
    var unitOfMeasureDescription: String = "м/с"
   // var geometryScreenContentView: GeometryProxy
    
  
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1199920788, green: 0.6115283127, blue: 1, alpha: 1))
                .opacity(0.3)
            VStack(alignment: .center, spacing: nil, content: {
                Text("\(imageSystemNameAndName)  \(name)")
                    .padding(.top, 5)// это макс. значение
                    .padding(.bottom, 5)// это макс. значение
                Text("\(Int(windsspeed))" ).font(.largeTitle).bold() + Text("\(unitOfMeasure)").font(.title2).bold()
                Spacer(minLength: 1)
                Text("\(description)  " )
                Text("\(Int(windsgust )) \(unitOfMeasureDescription)").padding(.bottom,10)
                // При увеличении текста до 3 трок текст расширяется вверх, вместимость не более 3-х строк.
            })
        }
        .cornerRadius(20)
        .frame(width: widthUIScreen / 2.2, height: 155)
    }
}
#Preview {
    WindViewForLessiOs16()
}
