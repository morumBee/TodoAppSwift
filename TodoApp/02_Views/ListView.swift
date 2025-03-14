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
                ForEach(todoListViewModel.items) { item in
                    ItemView(item: item)
                }
            }
        }
        .navigationTitle("Todo list")
    }
}

#Preview {
    NavigationView {
        ListView()
    }
    .environmentObject(TodoListViewModel())
}


