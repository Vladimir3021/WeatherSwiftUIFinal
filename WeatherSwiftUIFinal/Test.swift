//
//  Test.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 24.01.2024.
//

import SwiftUI

@available(iOS 17.0, *)
struct Test: View {
    
    var body: some View {
        
        
      Text("ffff")
        
        
        
    }
}


#Preview {
  
    if #available(iOS 17.0, *) {
        Test()
    } else {
        WindowWeatherForHours()
    }


  
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
