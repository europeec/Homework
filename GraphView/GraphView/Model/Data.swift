//
//  Data.swift
//  GraphView
//
//  Created by Дмитрий Юдин on 18.05.2021.
//

import Foundation

let graphs = [
    Graph(description: "Собрать ресурсы", minTime: 30, maxTime: 45, x: 20, y: 100),
    Graph(description: "Питч", minTime: 3, maxTime: 7, x: 250, y: 20),
    Graph(description: "Собрать команду", minTime: 30, maxTime: 55, x: 210, y: 360),
    Graph(description: "Найти оборудование", minTime: 12, maxTime: 30, x: 360, y: 190),
    Graph(description: "Разбить на задачи", minTime: 20, maxTime: 60, x: 430, y: 360),
    Graph(description: "Поставить дедлайны", minTime: 20, maxTime: 25, x: 580, y: 200 )
]

let edges = [
    Edge(startX: 20 + 57, startY: 100 + 57, stopX: 250 + 57, stopY: 20 + 57),
    Edge(startX: 20 + 57, startY: 100 + 57, stopX: 210 + 57, stopY: 360 + 57),
    Edge(startX: 210 + 57, startY: 360 + 57, stopX: 360 + 57, stopY: 190 + 57),
    Edge(startX: 250 + 57, startY: 20 + 57, stopX: 360 + 57, stopY: 190 + 57),
    Edge(startX: 250 + 57, startY: 20 + 57, stopX: 580 + 57, stopY: 200 + 57),
    Edge(startX: 430 + 57, startY: 360 + 57, stopX: 580 + 57, stopY: 200 + 57),
    Edge(startX: 210 + 57, startY: 360 + 57, stopX: 430 + 57, stopY: 360 + 57),
    Edge(startX: 360 + 57, startY: 190 + 57, stopX: 430 + 57, stopY: 360 + 57),
    Edge(startX: 360 + 57, startY: 190 + 57, stopX: 580 + 57, stopY: 200 + 57)
]


