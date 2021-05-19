//
//  DetailView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 19.05.2021.
//

import SwiftUI

struct DetailView: View {
    let data: Graph
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Название вашей задачи")
                .font(.title)
                .fontWeight(.bold)
                .lineLimit(3)
                .truncationMode(.middle)
                
            Text("Минимальное время: 12 мин.")
            Text("Максимальное время: 33 мин.")
            
            Spacer()
        }.padding(5)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: Graph(description: ")))"))
    }
}
