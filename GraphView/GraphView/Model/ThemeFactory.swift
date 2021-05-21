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
    private var theme: Theme {
        // если значение еще не установлено -> возвращает false (поэтому isColorful, а не classic)
        let isColorful = UserDefaults.standard.bool(forKey: "isColorful")
        return isColorful ? .colorful : .classic
    }
    
    private var colorfulTableView = [Color.green, .yellow, .orange, .red, .pink, .blue]
    private var colorfulEdges = Color.pink
    private var colorfulGraphs = Color.purple
    
    private var classicTableView = [Color](repeating: Color(UIColor.secondarySystemBackground), count: 6)
    private var classicEdges = Color.black
    private var classicGraphs = Color.black
    
    static let shared = ThemeFactory()
    
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
    
}
