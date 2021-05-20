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
        ScrollView(.vertical) {
            VStack {
                ForEach(data.indices) { index in
                    
                    HStack {
                        Text("\(index + 1) этап")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.secondary)
                         
                        Spacer()
                    }.padding([.leading, .top], 10)
                    
                    ForEach(data[index]) { graph in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(graph.description)
                                    .fontWeight(.bold)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.8)
                                    .multilineTextAlignment(.leading)
                                
                                Spacer()
                                    .frame(height: 5)
                                
                                Text(graph.getTimeString())
                                    .font(.caption)
                                    .lineLimit(2)
                                
                                Spacer()
                            }.padding()
                            .frame(height: 100)
                            
                            Spacer()
                        }.background(colors[index].opacity(0.3))
                        
                    }
                    
                    
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
