//
//  ListItemViewModel.swift
//  TodoApp
//
//  Created by Morumbi on 3/13/25.
//

import Foundation

class TodoListViewModel: ObservableObject {
    @Published var items: [TodoItem] = [] {
        didSet {
            saveItems()
        }
    }

    let itemsKey = "items_key"

    init() {
        getItems()
    }

    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([TodoItem].self, from: data)
        else { return }
        items = savedItems
    }

    func AddItem(_ text: String) {
        let newItem = TodoItem(text: text)
        items.append(newItem)
    }

    func removeItem(_ indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }

    func moveItem(_ indexSet: IndexSet, _ index: Int) {
        items.move(fromOffsets: indexSet, toOffset: index)
    }

    func updateIsDoneItem(_ item: TodoItem) {
        let id = item.id
        let targetIdx = items.firstIndex(where: { $0.id == id })
        if let targetIdx {
            items[targetIdx] = item.toggleIsDone()
        }
    }

    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
}
