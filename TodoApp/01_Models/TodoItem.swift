//
//  ItemModel.swift
//  TodoApp
//
//  Created by Morumbi on 3/13/25.
//

import Foundation

struct TodoItem: Identifiable, Codable {
    let id: String
    let text: String
    let isDone: Bool

    init(id: String = UUID().uuidString, text: String, isDone: Bool = false) {
        self.id = id
        self.text = text
        self.isDone = isDone
    }

    func toggleIsDone() -> TodoItem {
        TodoItem(id: id, text: text, isDone: !isDone)
    }
}
