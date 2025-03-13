//
//  ContentView.swift
//  TodoApp
//
//  Created by Morumbi on 3/13/25.
//

import SwiftUI

struct ListView: View {
    @State var itemLists = [
        ItemModel(text: "visit office"),
        ItemModel(text: "buy milk", isDone: true),
        ItemModel(text: "buy eggs"),
    ]
    var body: some View {
        VStack {
            List {
                ForEach(itemLists) { item in
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
}
