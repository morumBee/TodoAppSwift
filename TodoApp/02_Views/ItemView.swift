//
//  ItemView.swift
//  TodoApp
//
//  Created by Morumbi on 3/13/25.
//

import SwiftUI

struct ItemView: View {
    @State var item: TodoItem
    var body: some View {
        HStack {
            Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                .font(.system(.title3))
                .foregroundStyle(item.isDone ? Color.accentColor : .gray)
            Text(item.text)
                .font(.headline)
                .padding(.leading, 6)
        }
    }
}

#Preview {
    ItemView(item: TodoItem(text: "Test Item", isDone: false))
}
