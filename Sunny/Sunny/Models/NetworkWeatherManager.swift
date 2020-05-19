//
//  NetworkWeatherManager.swift
//  Sunny
//
//  Created by Борис Лысиков on 20.05.2020.
//  Copyright © 2020 Ivan Akulov. All rights reserved.
//

import Foundation

struct NetworkWeatherManager {
    func fetchCurrentWeather(forCity city: String) {
        let urlStirng = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)"
        guard let url = URL(string: urlStirng) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, responce, error) in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
            }
        }
        task.resume()
        
    }
}
