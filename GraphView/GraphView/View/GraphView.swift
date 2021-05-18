//
//  GraphView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import SwiftUI

struct GraphView: View {
    let data: Graph
    var body: some View {
        ZStack {
            ZStack {
                Circle()
                    .stroke(lineWidth: 2)
                Text(data.description)
                    .fontWeight(.bold)
                    .font(.title)
                    .minimumScaleFactor(0.7)
                    .lineLimit(3)
                    .truncationMode(.middle)
                    .multilineTextAlignment(.center)
                    .frame(width: 150, height: 150)
                
            }.frame(width: 200, height: 200)
            
        }
        
    }
}

struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        GraphView(data: Graph(description: "" ))
    }
}
