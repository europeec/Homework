//
//  LineView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 19.05.2021.
//

import SwiftUI

struct Line: View {
    let startX: Int
    let startY: Int
    let stopX: Int
    let stopY: Int
    
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: startX, y: startY))
            path.addLine(to: CGPoint(x: stopX, y: stopY))
        }.stroke(Color.black, lineWidth: 3)
    }
}

struct Line_Previews: PreviewProvider {
    static var previews: some View {
        Line(startX: 33, startY: 33, stopX: 168, stopY: 168)
    }
}
