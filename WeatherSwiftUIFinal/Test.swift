//
//  Test.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 24.01.2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct Test: View {
    // конст. содержащая углы прямоугольника с разными углами закругления для левого окна
    let radiiLeagingWindow = RectangleCornerRadii(topLeading: 50, bottomLeading: 0, bottomTrailing: 20, topTrailing: 0)
    var body: some View {
        UnevenRoundedRectangle(cornerRadii: radiiLeagingWindow, style: .circular)
            .frame(minWidth: 160, idealWidth: 250, maxWidth: 360, minHeight: 200, maxHeight:200)
            .foregroundColor( Color(#colorLiteral(red: 0.1199920788, green: 0.6115283127, blue: 1, alpha: 1)))
            .opacity(0.5)
            .padding()
    }
}

#Preview {
    if #available(iOS 16.0, *) {
        Test()
    } else {
       Text(verbatim: "ggggg")
    }
}
