//
//  Webservice.swift
//  Good Sips
//
//  Created by Mason Greenwell on 4/6/22.
//

import Foundation

class Webservice{

func getAllDrinks(completion: @escaping ([Drink]) -> ()){
    
    guard let url = URL(string:
        "www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita")
    else {
        fatalError("The URL is not correct.")
    }
    
    URLSession.shared.dataTask(with: url) { data, _, _ in
        
        let drinks = try!
        JSONDecoder().decode([Drink].self, from: data!)
        DispatchQueue.main.async {
            completion(drinks)
        }
    }.resume()
}
}
