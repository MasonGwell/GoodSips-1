//
//  DrinkListViewModel.swift
//  Good Sips
//
//  Created by Mason Greenwell on 4/6/22.
//

import Foundation
import Combine
import SwiftUI

final class DrinkListViewModel: ObservableObject {
    
    init() {
        fetchDrinks()
        
    }
    
    @Published var drinks = [Drink]()
    
    private func fetchDrinks() {
        Webservice().getAllDrinks{
            self.drinks = $0
        }
        
    }
    
}
