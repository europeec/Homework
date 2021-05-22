//
//  CustomToggle.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 22.05.2021.
//

import Foundation
import SwiftUI

struct PaintStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            let isActive = configuration.isOn
            
            configuration.label
            
            Spacer()
            
            Image(systemName: "paintpalette")
                .resizable()
                .frame(width: 24, height: 24)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(isActive ? .green : .black)
                .animation(.linear)
                .onTapGesture {
                    configuration.isOn.toggle()
                    
                    let generator = UIImpactFeedbackGenerator(style: .soft)
                    generator.impactOccurred()
                }
                
            
        }
    }
    
}
