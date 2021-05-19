//
//  GraphStruct.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import Foundation

struct Graph: Identifiable, Hashable {
    var id = UUID()
    var description: String
    
    init(description: String) {
        self.description = description
    }
    // other ..
}
