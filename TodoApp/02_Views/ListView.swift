//
//  ContentView.swift
//  TodoApp
//
//  Created by Morumbi on 3/13/25.
//

import SwiftUI



struct ListView: View {
    var body: some View {
        ScrollView {
            Text("hi")
        }
        .navigationTitle("Todo list")
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
