//
//  TasksView.swift
//  ToDoApp
//
//  Created by Shiwam verma on 10/06/22.
//

import SwiftUI

struct TasksView: View {
    var body: some View {
        VStack{
            Text("My Tasks")
                .font(.title3).bold()
                .padding()
                .frame(maxWidth:.infinity, alignment:.leading)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.95, green: 0.823, blue: 0.636))
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
    }
}
