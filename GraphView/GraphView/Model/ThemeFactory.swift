//
//  ThemeFactory.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 21.05.2021.
//

import Foundation
import SwiftUI

enum Theme {
    case classic, colorful
}

struct ThemeFactory {

    static var shared = ThemeFactory()
    
    private let key = "isColorful"
    private var isColorful: Bool {
        get {
            return UserDefaults.standard.bool(forKey: key)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
    
    private var theme: Theme {
        return isColorful ? .colorful : .classic
    }
    
    private var colorfulTableView = [Color.green, .yellow, .orange, .red, .pink, .blue]
    private var colorfulEdges = Color.pink
    private var colorfulGraphs = Color.purple
    
    private var classicTableView = [Color](repeating: Color(UIColor.secondarySystemBackground), count: 6)
    private var classicEdges = Color.black
    private var classicGraphs = Color.black
    
    
    public mutating func setValue(_ value: Bool) {
        isColorful = value
    }
    
    public func getTheme() -> Theme {
        return theme
    }
    
    public func getColorForTableView() -> [Color] {
        return theme == .classic ? classicTableView : colorfulTableView
    }
    
    public func getColorForEdges() -> Color {
        return theme == .classic ? classicEdges : colorfulEdges
    }
    
    public func getColorForGraphs() -> Color {
        return theme == .classic ? classicGraphs : colorfulGraphs
    }
    
    public func getToggleBool() -> Bool {
        return isColorful
    }
}
