//
//  TableView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 20.05.2021.
//

import SwiftUI

struct TableView: View {
    let data: [Graph]
    let colors: [Color]
    
    var body: some View {
        List {
            ForEach(data.indices) { index in
                HStack {
                    VStack (alignment: .leading) {
                        Text(data[index].description)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                            .frame(height: 5)
                        
                        Text(data[index].getTimeString())
                    }.padding()
                    
                    Spacer()
                }.background(colors[index])
                .cornerRadius(13)
            }
        }.padding([.leading, .top], 10)
    }
}



struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView(data: graphs, colors: [Color.red, .blue, .purple, .green, .yellow])
    }
}
