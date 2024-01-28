//
//  Test.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 24.01.2024.
//

import SwiftUI

//@available(iOS 16.0, *)
struct Test: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: 200, height: 100)
            .overlay(alignment: .topLeading) { Star(color: .red) }
            .overlay(alignment: .topTrailing) { Star(color: .yellow) }
            .overlay(alignment: .bottomLeading) { Star(color: .green) }
            .overlay(alignment: .bottomTrailing) { Star(color: .blue) }
       
      
    }
}
struct Star: View {
    var color = Color.yellow


    var body: some View {
        Image(systemName: "star.fill")
            .foregroundStyle(color)
    }
}


#Preview {
  
        Test()


  
}
//extension View {
//    func printSizeInfo(_ label: String = "") -> some View {
//        background(
//            GeometryReader { proxy in
//                Color.clear
//                    .task(id: proxy.size) {
//                        print(label, proxy.size)
//                    }
//            }
//        )
//    }
//}
