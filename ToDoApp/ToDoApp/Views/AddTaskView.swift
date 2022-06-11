//
//  AddTaskView.swift
//  ToDoApp
//
//  Created by Shiwam verma on 10/06/22.
//

import SwiftUI

struct AddTaskView: View {
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment:.leading, spacing: 20 ) {
             Text("Create a new task")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment:.leading)
            
            TextField("Enter your task here", text: $title)
                .textFieldStyle(.roundedBorder)
                .cornerRadius(10)
            
            Button {
                print("task added")
                dismiss()
            } label: {
                Text("Add Task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(red: 0.204, green: 0.608, blue: 0.57))
                    .cornerRadius(30)
            }
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(red: 0.95, green: 0.823, blue: 0.636))
        
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}
