//
//  ContentView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(data, id: \.self) { graphArray in
                        VStack {
                            ForEach(graphArray) {
                                graph in
                                GraphView(data: graph)
                                
                            }
                        }
                    }
                }
            }.padding([.top, .bottom], 30)
            .edgesIgnoringSafeArea(.all)
            
            navigationBarHidden(true)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
