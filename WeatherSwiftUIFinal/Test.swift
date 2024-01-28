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
            .frame(width: 300, height: 500)
            .overlay(alignment: .topLeading) { Text("yyyyyy").foregroundStyle(.green) }
            .overlay(alignment: .topTrailing) { Star(color: .yellow) }
            .overlay(alignment: .bottomLeading) { Star(color: .green) }
            .overlay(alignment: .bottomTrailing) { Star(color: .blue) }
       
      
    }
}
struct Star: View {
    var color = Color.yellow


    var body: some View {
        Text("yyyyyy")
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
