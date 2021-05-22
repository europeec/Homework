//
//  SettingsView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 21.05.2021.
//

import SwiftUI

struct SettingsView: View {
    @State var isColorful = ThemeFactory.shared.getToggleBool()
    
    var body: some View {
        VStack {
            HStack {
                Toggle("Цветная тема", isOn: $isColorful)
                    .toggleStyle(PaintStyle())
                    .onChange(of: isColorful) { value in
                        ThemeFactory.shared.setValue(value)
                    }
                    
                Spacer()
            }.padding()
            // FIXME
            
            Spacer()
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(isColorful: false)
    }
}
