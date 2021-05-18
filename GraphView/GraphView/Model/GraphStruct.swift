//
//  GraphStruct.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import Foundation

class Graph: Identifiable {
//    static func == (lhs: Graph, rhs: Graph) -> Bool {
//        return lhs.description == rhs.description
//    }
//    
    
    var id = UUID()
    var description: String
    
    init(description: String) {
        self.description = description
    }
    // other ..
}
