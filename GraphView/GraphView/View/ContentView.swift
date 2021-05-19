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
        ScrollView(.horizontal) {
            HStack (spacing: 0) {
                ForEach(data.indices) { index in
                    ZStack {
                          Rectangle()
                            .frame(width: 230, height: .infinity)
                            .foregroundColor(colors[index])
                            .opacity(0.3)
                            
                        if (index % 2 == 0) {
                            Rectangle()
                                .stroke(style: StrokeStyle(lineWidth: 3, dash: [35]))
                            
                        }
                        
                        Rectangle()
                            .frame(width: 230, height: 5)
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 5, height:  CGFloat(data[index].count) * 200)
                            VStack (spacing: 50) {
                                ForEach(data[index]) {
                                    graph in
                                    GraphView(data: graph)
                                    
                                }
                            }
                        }
                    }
                }
                
            }.edgesIgnoringSafeArea(.all)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
