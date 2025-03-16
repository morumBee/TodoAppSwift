//
//  ContentView.swift
//  TodoApp
//
//  Created by Morumbi on 3/13/25.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var todoListViewModel: TodoListViewModel
    var body: some View {
        VStack {
            List {
                ForEach($todoListViewModel.items) { $item in
                    ItemView(item: $item)
                }
                .onDelete(perform: todoListViewModel.removeItem)
                .onMove(perform: todoListViewModel.moveItem)
            }
        }
        .navigationTitle("Todo list")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add") {
                    AddItemView()
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        ListView()
    }
    .environmentObject(TodoListViewModel())
}
