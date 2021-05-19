//
//  GraphView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import SwiftUI

struct GraphView: View {
    let data: Graph
    @State var alertPresented = false
    @State var isDisabled = false
    var backgroundColor = Color.white
    
    var body: some View {
        Button(action: {
            self.alertPresented = true
            self.isDisabled = true
        }, label: {
            ZStack {
                Circle()
                    .stroke(lineWidth: 6)
                
                Circle()
                    .foregroundColor(backgroundColor)
                    .frame(width: 194, height: 194)
                
                Text(data.description)
                    .fontWeight(.bold)
                    .font(.title)
                    .minimumScaleFactor(0.7)
                    .lineLimit(3)
                    .truncationMode(.middle)
                    .multilineTextAlignment(.center)
                    .frame(width: 150, height: 150)
                
            }.frame(width: 200, height: 200)
        }).alert(isPresented: $alertPresented) {
            Alert(title: Text("Название проблемы"),
                  message: Text("минимальное время 33\nmaximalnoe 33"),
                  dismissButton: .cancel(Text("ok")) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        self.isDisabled = false
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
