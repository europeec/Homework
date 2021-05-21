//
//  GraphStruct.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import Foundation
import SwiftUI

struct Graph: Identifiable, Hashable {
    
    var description: String

    var id = UUID()
    private var minTime: Int
    private var maxTime: Int
    
    private var x: Int
    private var y: Int
    
    public init(description: String, minTime: Int, maxTime: Int, x: Int, y: Int) {
        self.description = description
        self.minTime = minTime
        self.maxTime = maxTime
        self.x = x
        self.y = y
    }
    
    public func getTimeString() -> String {
        return "Минимальное время: \(self.minTime) мин.\nМаксимальное время: \(self.maxTime) мин."
    }
    
    public func getCoordinates() -> CGPoint {
        return .init(x: self.x, y: self.y)
    }
}
