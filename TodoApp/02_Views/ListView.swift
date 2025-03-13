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
        ItemModel(text: "buy milk"),
        ItemModel(text: "buy eggs"),
    ]
    var body: some View {
        VStack {
            List {
                ForEach(itemLists) {item in
                    Text(item.text)
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
