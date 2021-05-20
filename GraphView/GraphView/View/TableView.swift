//
//  TableView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 20.05.2021.
//

import SwiftUI

struct TableView: View {
    let data: [[Graph]]
    let colors: [Color]
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                ForEach(data[index]) { graph in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(graph.description)
                                .fontWeight(.bold)
                                .lineLimit(2)
                                .minimumScaleFactor(0.8)
                                .multilineTextAlignment(.leading)
                        }.padding()
                        .frame(height: 100)
                        
                        Spacer()
                    }.background(colors[index])

                }
            }
        }
    }
}


struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView(data: data, colors: [Color.red, .blue, .purple, .green, .yellow])
    }
}
