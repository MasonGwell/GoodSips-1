//
//  Webservice.swift
//  Good Sips
//
//  Created by Katelin Vincent on 4/2/22.
//

import Foundation
import UIKit

enum NetworkError: Error {
    case badURL
    case badID
}

class Webservice {
    func getDrinks(searchTerm: String) async throws -> [Drink]{
        var components = URLComponents()
  //      components.scheme = "http"
        components.host = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=&#"
        
        guard let url = components.url else {
            throw NetworkError.badURL
        }
        
        let (data, response) = try await URLSession.shared.data(from:url)
        
        let DrinkResponse = try? JSONDecoder().decode(DrinkResponse.self, from: data)
        return DrinkResponse?.drinks ?? []
    }
}
//class DrinkViewController: UIViewController, UITextFieldDelegate{
//
//    @IBOutlet weak var conditionImageView: UIImageView!
//    @IBOutlet weak var searchTextField: UITextField!
//
//   override func viewDidLoad()
//  {
//    super.viewDidLoad()
//
//    searchTextField.delegate = self
//  }
//
//  @IBAction func searchPressed(_ sender:UIButton)
//  {
//    searchTextField.endEditing(true)
//    print(searchTextField.text!)
//  }
//
//  func textFieldShouldReturn(_ textField: UITextField) -> Bool
//  {
//    searchTextField.endEditing(true)
//    print(searchTextField.text!)
//    return true
//  }
//
//  // added for API ---------------------
//  var drinkManager = DrinkManager()
//
//  func textFieldDidEndEditing(_ textField: UITextField) {
//      if let drink = searchTextField.text {
//      drinkManager.fetchDrink(drinkName: drink)
//    }
//     searchTextField.text = ""
//  }
//}
