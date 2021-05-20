//
//  ContentView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    let colors = [Color.green, .yellow, .orange, .red, .pink, .blue, Color(UIColor.systemIndigo.cgColor), .purple]
    var body: some View {
        TabView {
            TableView(data: data, colors: colors)
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Table")
                }
            
            GraphViewScreen(colors: colors)
                .tabItem {
                    Image(systemName: "circle.grid.2x2")
                    Text("Graphs")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
