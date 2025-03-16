//
//  ItemView.swift
//  TodoApp
//
//  Created by Morumbi on 3/13/25.
//

import SwiftUI

struct ItemView: View {
    @Binding var item: TodoItem
    @EnvironmentObject var todoListViewModel: TodoListViewModel
    var body: some View {
        HStack {
            Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                .font(.system(.title3))
                .foregroundStyle(item.isDone ? Color.accentColor : .gray)
                .onTapGesture {
                    todoListViewModel.updateIsDoneItem(item)
                }
            Text(item.text)
                .font(.headline)
                .padding(.leading, 6)
        }
    }
}

#Preview {
    ItemView(item: .constant(TodoItem(text: "Test Item", isDone: false)))
        .environmentObject(TodoListViewModel())
}
