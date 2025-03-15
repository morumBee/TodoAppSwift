//
//  AddItemView.swift
//  TodoApp
//
//  Created by Morumbi on 3/13/25.
//

import SwiftUI

struct AddItemView: View {
    @State var textFieldText: String = ""
    @EnvironmentObject var todoListViewModel: TodoListViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 15) {
            TextField("Enter item", text: $textFieldText)
                .frame(height: 50)
                .padding(.horizontal, 15)
                .background(Color.gray.opacity(0.2))
                .clipShape(.rect(cornerRadius: 10))

            Button {
                AddItem(textFieldText)
                dismiss()
            }
            label: {
                Text("save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .foregroundStyle(.white)
                    .clipShape(.rect(cornerRadius: 10))
            }
            Spacer()
        }
        .padding(20)
        .navigationBarTitle("Add Item")
    }

    func AddItem(_ text: String) {
        let newItem = TodoItem(text: text)
        todoListViewModel.items.append(newItem)
    }
}

#Preview {
    NavigationView {
        AddItemView()
    }
}
