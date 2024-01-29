//
//  ModelForHourWindow.swift
//  WeatherSwiftUIFinal
//
//  Created by admin on 29.01.2024.
//


import SwiftUI

struct ModelHourlyForecast: Identifiable {
    var id = UUID()
    var time: String
    var image: Image
    var temperature: Int
}

var sectionData: [ModelHourlyForecast] = [
    ModelHourlyForecast(time: "Сейчас", image: Image(systemName: "cloud.snow.fill"), temperature: -5),
    ModelHourlyForecast(time: "01", image: Image(systemName: "sun.max.fill"), temperature: -6),
    ModelHourlyForecast(time: "02", image: Image(systemName: "sunrise.fill"), temperature: -7),
    ModelHourlyForecast(time: "03", image: Image(systemName: "sun.rain"), temperature: -8),
    ModelHourlyForecast(time: "04", image: Image(systemName: "moon.circle.fill"), temperature: -7),
    ModelHourlyForecast(time: "05", image: Image(systemName: "cloud.sun.rain"), temperature: -6),
    ModelHourlyForecast(time: "06", image: Image(systemName: "cloud.snow.fill"), temperature: -5),
    ModelHourlyForecast(time: "07", image: Image(systemName: "sun.max.fill"), temperature: -4),
    ModelHourlyForecast(time: "08", image: Image(systemName: "sunrise.fill"), temperature: -3),
    ModelHourlyForecast(time: "09", image: Image(systemName: "sun.rain"), temperature: -3),
    ModelHourlyForecast(time: "10", image: Image(systemName: "moon.circle.fill"), temperature: -2),
    ModelHourlyForecast(time: "11", image: Image(systemName: "cloud.sun.rain"), temperature: 0)
]

