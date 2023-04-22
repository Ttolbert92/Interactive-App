//
//  ContentView.swift
//  Interactive App
//
//  Created by Deangelo Tolbert on 4/17/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var titleText = "What is your name?"
    @State private var presentAlert = false
    @State private var age = ""
    
    var body: some View {
        VStack(spacing: 100.0) {
            Text(titleText)
            TextField("Type name...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                    .border(Color.gray, width: 1)
                    .padding()
            Text("How old are you?")
            TextField("Age", text: $age)
                .multilineTextAlignment(.center)
                .font(.title)
                    .border(Color.black, width: 1)
                    .padding()
            Button("Submit Name") {
                titleText = "Welcome, \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.brown)
            }
        Button("Alert") {
            // 2
            presentAlert = true
        }
        .alert("You can do anything!", isPresented: $presentAlert, actions: { // 3
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
