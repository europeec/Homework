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
            TableView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Список")
                }

            GraphViewScreen()
                .tabItem {
                    Image(systemName: "circle.grid.2x2")
                    Text("Графы")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Настройки")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
