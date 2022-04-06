//
//  WebserviceRoulette.swift
//  Good Sips
//
//  Created by Katelin Vincent on 4/6/22.
//

import Foundation
import UIKit

//enum NetworkError: Error {
//    case badURL
//    case badID
//}

class WebserviceRoulette {
    func getDrinks(searchTerm: String) async throws -> [Drink]{
        var components = URLComponents()
        components.host = "https://www.thecocktaildb.com/api/json/v1/1/random.php"

        
        guard let url = components.url else {
            throw NetworkError.badURL
        }
        
        let (data, response) = try await URLSession.shared.data(from:URL(string: "https://www.thecocktaildb.com/api/json/v1/1/random.php")!)
        
            let DrinkResponse = try JSONDecoder().decode(DrinkResponse.self, from: data)
        return DrinkResponse.drinks ?? []
    }
}
