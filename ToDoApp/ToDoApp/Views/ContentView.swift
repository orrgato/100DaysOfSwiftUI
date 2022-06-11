//
//  ContentView.swift
//  ToDoApp
//
//  Created by Shiwam verma on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAddTaskView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            TasksView()
            
            SmallAdButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
            
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
        }
        .frame(width: .infinity, height: .infinity, alignment: .bottom)
        .background(Color(red: 0.95, green: 0.823, blue: 0.636))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
