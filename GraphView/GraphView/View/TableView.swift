//
//  TableView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 20.05.2021.
//

import SwiftUI

struct TableView: View {
    @State var colors = ThemeFactory.shared.getColorForTableView()
    
    var body: some View {
        List {
            ForEach(graphs.indices) { index in
                HStack {
                    VStack (alignment: .leading) {
                        Text(graphs[index].description)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                            .frame(height: 5)
                        
                        Text(graphs[index].getTimeString())
                    }.padding()
                    
                    Spacer()
                }.background(colors[index])
                .cornerRadius(13)
            }
        }.padding([.leading, .top], 10)
        .onAppear {
            // обновляем цветовую схему
            colors = ThemeFactory.shared.getColorForTableView()
        }
    }
}



struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
