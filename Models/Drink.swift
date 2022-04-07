//
//  Drink.swift
//  Good Sips
//
//  Created by Mason Greenwell on 4/6/22.
//

import Foundation

struct Drink: Codable, Hashable, Identifiable {
    let id: Int
    let title: String
    let body: String
    
}
