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
    @State var isBigCircle = false
    
    var body: some View {
        
        ZStack {
            Circle()
                .stroke(lineWidth: 6)
                .foregroundColor(.black)
            
            Circle()
                .foregroundColor(.white)
                .frame(width: isBigCircle ? 140 : 115, height: isBigCircle ? 140 : 115)
            
            Text(data.description)
                .fontWeight(isBigCircle ? .black : .bold)
                .font(.caption)
                .minimumScaleFactor(0.7)
                .lineLimit(3)
                .truncationMode(.middle)
                .multilineTextAlignment(.center)
                .frame(width:  isBigCircle ? 120 : 100, height:  isBigCircle ? 120 : 100)
                .foregroundColor(.black)
            
        }.frame(width: 120, height: 120)
        .onTapGesture {
            let generator = UIImpactFeedbackGenerator(style: .medium)
            generator.impactOccurred()
            
            withAnimation {
                isBigCircle = true
            }
            alertPresented = true
        }
        .alert(isPresented: $alertPresented) {
            Alert(title: Text("Название проблемы"),
                  message: Text("минимальное время 33\nmaximalnoe 33"),
                  dismissButton: .cancel(Text("ok")) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        withAnimation {
                            isBigCircle = false
                            let generator = UIImpactFeedbackGenerator(style: .soft)
                            generator.impactOccurred()
                        }
                    }
                  })
            
        }
        
    }
}

struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        GraphView(data: Graph(description: "Сделать домашнее задание" ))
    }
}
