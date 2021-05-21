//
//  ContentView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TableView(data: graphs, colors: ThemeFactory.shared.getColorForTableView())
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Table")
                }

            GraphViewScreen(edgeColor: ThemeFactory.shared.getColorForEdges(),
                graphColor: ThemeFactory.shared.getColorForGraphs()
            )
                .tabItem {
                    Image(systemName: "circle.grid.2x2")
                    Text("Graphs")
                }
            SettingsView()
                .tabItem {
                    Text("Settings")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
