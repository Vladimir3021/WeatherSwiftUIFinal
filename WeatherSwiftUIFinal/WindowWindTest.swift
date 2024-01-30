//
//  WindowLayautThgrughPadding.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 24.01.2024.
//  WindowLayautRectangleThgrughPaddingAndFrameForiOs16

import SwiftUI

@available(iOS 16.0, *)
struct WindowWindTest: View {
    
//    let backgroundGradient = LinearGradient(
//        colors: [Color.red, Color.blue],
//        startPoint: .top, endPoint: .bottom)
    let placeholder = "Заполнит ель тек ста Заполни тель текста За полнитель тек ста"
    
    // конст. содержащая углы прямоугольника с разными углами закругления для левого окна
    let radiiLeagingWindow = RectangleCornerRadii(topLeading: 50, bottomLeading: 0, bottomTrailing: 20, topTrailing: 0)
    // конст. содержащая углы прямоугольника с разными углами закругления для правого окна
    let radiiTrailingWindow = RectangleCornerRadii(topLeading: 20, bottomLeading: 20, bottomTrailing: 20, topTrailing: 20)
    
    var body: some View {
        HStack {
            // Прямоугольник с разными углами закругления
            UnevenRoundedRectangle(cornerRadii: radiiLeagingWindow, style: .circular)
                //.printSizeInfo()
                //.fixedSize()
                //.fixedSize(horizontal: true, vertical: false)
                .frame(minWidth: 50, idealWidth: 200,maxWidth: 500,  minHeight: 200, maxHeight:200)
                .foregroundColor( Color(#colorLiteral(red: 0.1199920788, green: 0.6115283127, blue: 1, alpha: 1)))
                .opacity(0.5)
                .padding()
                .border(Color.black)
                
            Spacer()
            ZStack {
                //                backgroundGradient
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
                        Text("\(25)")
                            .font(.title3)
                            .fontWeight(.black)
                        Text(verbatim: "М/С").font(.title3)
                            .fontWeight(.black)
                    }
                    Spacer()
                    Text(verbatim: "\(placeholder)")
                        .font(.subheadline)
                        .lineLimit(4)
                }
            }//.printSizeInfo()
            .frame(minWidth: 60,  maxWidth: 560,  maxHeight:200)
            .padding()
        }.background(.green)
            .onTapGesture {
             print(type(of: self.body))
             }
    }
}

#Preview {

    if #available(iOS 16.0, *) {
        WindowWindTest()
    } else {
Text("dd")    }
   
}
