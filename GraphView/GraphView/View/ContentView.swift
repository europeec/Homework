//
//  ContentView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(data, id: \.self) { graphArray in
                    VStack {
                        ForEach(graphArray) {
                            graph in
                            GeometryReader { geometry in
                                ZStack {
                                    Circle()
                                        .frame(width: 100, height: 100)
                                        .foregroundColor(.blue)
                                    let frame = geometry.frame(in: .global).origin
                                    Text("\(frame.x)")
                                }
                                
                                
                            }.frame(width: 100, height: 100)
                        }
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
