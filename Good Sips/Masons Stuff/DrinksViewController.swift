//
//  DrinksViewController.swift
//  Good Sips
//
//  Created by Mason Greenwell on 4/2/22.
//

import Foundation

final class DrinksViewController: UIViewController {
    private var className: [drinkData]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkManager().fetchData{ [weak self] (className) in
            self?.className = className
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    
    //whatever other code we need in the view controller
}
