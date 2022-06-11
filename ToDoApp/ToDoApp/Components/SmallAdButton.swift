//
//  SmallAdButton.swift
//  ToDoApp
//
//  Created by Shiwam verma on 11/06/22.
//

import SwiftUI

struct SmallAdButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 50)
                .foregroundColor(Color(red: 0.204, green: 0.608, blue: 0.57))
            
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .frame(height: 50)
    }
}

struct SmallAdButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAdButton()
    }
}
