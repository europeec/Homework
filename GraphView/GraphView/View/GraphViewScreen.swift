//
//  GraphViewScreen.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 20.05.2021.
//

import SwiftUI

struct GraphViewScreen: View {
    let colors = [Color.red, .blue, .purple, .green, .yellow]
    var body: some View {
        ScrollView(.horizontal) {
            HStack (spacing: 0) {
                ForEach(data.indices) { index in
                    ZStack {
                          Rectangle()
                            .frame(width: 200)
                            .foregroundColor(colors[index])
                            .opacity(0.3)
                            
                        if (index % 2 == 0) {
                            Rectangle()
                                .stroke(style: StrokeStyle(lineWidth: 3, dash: [35]))
                        }
                       
                        
                        ZStack {
                            if (index == 0) {
                                HStack {
                                    Spacer()
                                    Rectangle()
                                        .frame(width: 100, height: 5)
                                }
                            } else if (index == data.count - 1) {
                                HStack {
                                    Rectangle()
                                        .frame(width: 100, height: 5)
                                    Spacer()
                                }
                            } else {
                                Rectangle()
                                    .frame(width: 200, height: 5)
                            }
                            
                            
                            if (data[index].count > 1) {
                                Rectangle()
                                    .frame(width: 5, height:  CGFloat(data[index].count) * 120)
                            }
                            VStack (spacing: 50) {
                                ForEach(data[index]) {
                                    graph in
                                    GraphView(data: graph)
                                    
                                }
                            }
                        }.padding(.bottom, 30)
                    }
                }
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct GraphViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        GraphViewScreen()
    }
}
