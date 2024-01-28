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
        VStack(alignment: .center, spacing: nil, content: {
            Text("сейчас").padding(.all, 20)
            Spacer()
            Text("\(Image(systemName: "cloud.snow.fill")) ")
            Spacer()
            Text("-5 \u{00B0}").padding(.bottom, 10).font(.title3)
        })
        .frame(minWidth: 50,  maxWidth: .infinity, minHeight: 200,  maxHeight: 200, alignment: .center)
        .fixedSize()
        .background(Color(#colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1)) )
        .clipShape(RoundedRectangle(cornerRadius: 15), style: FillStyle())
        .padding()
 
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
