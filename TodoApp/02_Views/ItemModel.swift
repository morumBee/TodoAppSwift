//
//  ItemModel.swift
//  TodoApp
//
//  Created by Morumbi on 3/13/25.
//

import Foundation

struct ItemModel : Identifiable {
    var id: String = UUID().uuidString
    var text: String
    var isDone: Bool = false
}
