//
//  GraphView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import SwiftUI

struct GraphView: View {
    let data: Graph
    @State var popOverPresented = false
    @State var isDisabled = false
    @State var text = "hello"
    var body: some View {
        Button(action: {
            self.popOverPresented = true
        }, label: {
            ZStack {
                Circle()
                    .stroke(lineWidth: 6)
                Text(text)
                    .fontWeight(.bold)
                    .font(.title)
                    .minimumScaleFactor(0.7)
                    .lineLimit(3)
                    .truncationMode(.middle)
                    .multilineTextAlignment(.center)
                    .frame(width: 150, height: 150)
                
            }.frame(width: 200, height: 200)
        }).popover(isPresented: $popOverPresented) {
            Text("???")
                .onAppear(perform: {
                    isDisabled = true
                })
                .onDisappear(perform: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        isDisabled = false
                    }
                })
        }
        .disabled(isDisabled)
        
    }
}

struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        GraphView(data: Graph(description: "Сделать домашнее задание" ))
    }
}
