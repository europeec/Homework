//
//  GraphViewScreen.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 20.05.2021.
//

import SwiftUI

struct GraphViewScreen: View {
    let edgeColor: Color
    let graphColor: Color
    
    @State var ratio: CGFloat = 1.0
    var body: some View {
        ScrollView (.horizontal) {
            GeometryReader { geometry in
                ForEach(edges, id: \.self) { edge in
                    Path { path in
                        path.move(to: CGPoint(x: edge.startX, y: edge.startY))
                        path.addLine(to: CGPoint(x: edge.stopX, y: edge.stopY))
                    }.stroke(edgeColor, lineWidth: 5)
                }
                
                ForEach(graphs) { graph in
                    GraphView(data: graph, color: graphColor)
                }
            }.frame(width: 750)
        }
    }
}

struct GraphViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        GraphViewScreen(edgeColor: .black, graphColor: .black)
    }
}
