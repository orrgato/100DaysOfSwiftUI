//
//  TaskRow.swift
//  ToDoApp
//
//  Created by Shiwam verma on 10/06/22.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: completed ? "checkmark.circle" : "circle")
            Text(task)
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Go for a Walk", completed: true)
    }
}
