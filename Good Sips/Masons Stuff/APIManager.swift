//
//  APIManager.swift
//  Good Sips
//
//  Created by Mason Greenwell on 4/2/22.
//

import Foundation

func fetchData(completionHandler: @escaping ([drinkData]) -> Void) {
    let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=" + "(see note below)")!
    //this is supposed to be the name of the class in DrinksViewController
    
    let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
        if let error = error {
            print("Error: \(error)")
            return
        }
    
    guard let httpResponse = response as? HTTPURLResponse,
          (200...299).contains(httpResponse.statuscode) else{
              print("Error: \(response)")
              return
          }
    
    if let data = data,
       let drinkInformation = try? JSONDecoder().decode(drinkInformation.self, from: data) {
        completionHandler(filmSumary.results ?? [])
    }
    })
    task.resume()
    }
