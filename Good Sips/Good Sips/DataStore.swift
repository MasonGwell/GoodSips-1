//
//  DataStore.swift
//  Good Sips
//
//  Created by Katelin Vincent on 4/4/22.
//

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable{
  var id = String()
  var toDoItem = String()
}

class TaskStore : ObservableObject {
  @Published var tasks = [Task]()
}
