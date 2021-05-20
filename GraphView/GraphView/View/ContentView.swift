//
//  ContentView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import SwiftUI

struct ContentView: View {
    let colors = [Color.red, .blue, .purple, .green, .yellow]
    var body: some View {
        TabView {
            TableView(data: data, colors: colors)
                .tabItem { Text("Table") }
            
            GraphViewScreen()
                .tabItem { Text("Graphs") }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
