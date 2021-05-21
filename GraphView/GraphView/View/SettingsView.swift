//
//  SettingsView.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 21.05.2021.
//

import SwiftUI

struct SettingsView: View {
    @State var isColorful = UserDefaults.standard.bool(forKey: "isColorful") {
        didSet(newValue) {
            UserDefaults.standard.set(newValue, forKey: "isColorful")
            
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Toggle("Цветная тема", isOn: $isColorful)
                
                Spacer()
            }.padding()
            // FIXME
            
            Spacer()
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
