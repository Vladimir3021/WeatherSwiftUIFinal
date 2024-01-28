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
        let view = Rectangle().frame(width: 100, height: 100)
        Text("Hello, world!")
          .frame(width: 300, height: 100)
          .onTapGesture {
            print(type(of: self.body))
              print(type(of: view))
          }
          ModifiedContent(content: Text("kkkkk"), modifier: CustomFont())
       
      
    }
}
struct CustomFont: ViewModifier {
  func body(content: Content) -> some View {
    content.font(.largeTitle)
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
