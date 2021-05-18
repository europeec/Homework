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
            GeometryReader { geometry in
                let frame = geometry.frame(in: CoordinateSpace.global)
                HStack {
                    Circle()
                        .foregroundColor(.red)
                        .frame(width: 100)
                    
                    VStack(spacing: 40) {
                        Circle()
                            .foregroundColor(.red)
                            .frame(width: 100, height: 100)
                        
                        Circle()
                            .foregroundColor(.red)
                            .frame(width: 100, height: 100)
                        
                    }.frame(idealHeight: 0)
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
