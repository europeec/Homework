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
    var minTime: Int
    var maxTime: Int
    
    
    func getTimeString() -> String {
        return "Минимальное время: \(self.minTime) мин.\nМаксимальное время: \(self.maxTime) мин."
    }
    
    // other ..
}
