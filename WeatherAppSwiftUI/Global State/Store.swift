//
//  Store.swift
//  WeatherAppSwiftUI
//
//  Created by Roy Quesada on 6/4/23.
//

import Foundation

class Store: ObservableObject {
    @Published var weatherList: [WeatherViewModel] = [WeatherViewModel]()
    @Published var selectedUnit: TemperatureUnit = .kelvin
    
    init(){
        selectedUnit = UserDefaults.standard.unit
    }
    
    func addWeather(_ weather: WeatherViewModel) {
        weatherList.append(weather)
    }
}
