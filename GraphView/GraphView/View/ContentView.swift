//
//  ContentView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import SwiftUI

struct ContentView: View {
    let tableViewColor = ThemeFactory.shared.getColorForTableView()
    let edgeColor = ThemeFactory.shared.getColorForEdges()
    let graphsColor = ThemeFactory.shared.getColorForGraphs()
    
    var body: some View {
        TabView {
            TableView(data: graphs, colors: tableViewColor)
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Table")
                }

            GraphViewScreen(edgeColor: edgeColor, graphColor: graphsColor)
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
