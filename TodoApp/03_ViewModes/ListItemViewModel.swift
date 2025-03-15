//
//  ListItemViewModel.swift
//  TodoApp
//
//  Created by Morumbi on 3/13/25.
//

import Foundation

class TodoListViewModel: ObservableObject {
    @Published var items: [TodoItem] = []

    init() {
        getItems()
    }

    func getItems() {
        let newItems = [
            TodoItem(text: "visit office"),
            TodoItem(text: "buy milk", isDone: true),
            TodoItem(text: "buy eggs")
        ]

        items.append(contentsOf: newItems)
    }
    
    func AddItem(_ text: String) {
        let newItem = TodoItem(text: text)
        items.append(newItem)
    }
}
