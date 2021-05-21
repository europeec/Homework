//
//  GraphView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import SwiftUI

struct GraphView: View {
    let data: Graph
    let color: Color
    @State var alertPresented = false
    @State var isDisabled = false
    @State var isBigCircle = false
    
    var coordinates: CGPoint {
        return data.getCoordinates()
    }
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: CGFloat(isBigCircle ? 3 : 6))
                .foregroundColor(color)
                .frame(width: CGFloat(isBigCircle ? 140 : 115))
            
            Circle()
                .foregroundColor(.white)
                .frame(width: CGFloat(isBigCircle ? 140 : 115), height: CGFloat(isBigCircle ? 140 : 115))
            
            Text(data.description)
                .fontWeight(isBigCircle ? .black : .bold)
                .font(.caption)
                .minimumScaleFactor(0.7)
                .lineLimit(3)
                .truncationMode(.middle)
                .multilineTextAlignment(.center)
                .frame(width:  CGFloat(isBigCircle ? 120 : 100), height:  CGFloat(isBigCircle ? 120 : 100))
                .foregroundColor(.black)
            
        }.offset(x: coordinates.x, y: coordinates.y)
        .frame(width: CGFloat(isBigCircle ? 143: 121), height: CGFloat(isBigCircle ? 143 : 121))
        .onTapGesture {
            let generator = UIImpactFeedbackGenerator(style: .medium)
            generator.impactOccurred()
            
            withAnimation {
                isBigCircle = true
            }
            alertPresented = true
        }
        .alert(isPresented: $alertPresented) {
            Alert(title: Text(data.description),
                  message: Text(data.getTimeString()),
                  dismissButton: .cancel(Text("Ок")) {
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
        GraphView(data: Graph(description: "Сделать домашнее задание", minTime: 33, maxTime: 33, x: 0, y: 0 ), color: .black)
    }
}
