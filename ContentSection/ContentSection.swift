//
//  ContentSection.swift
//  ContentSection
//
//  Created by David Thorn on 20.10.19.
//  Copyright © 2019 David Thorn. All rights reserved.
//

import Foundation

class ContentSection<T: CardContentRowProtocol & Hashable>: CardContentSectionProtocol, Hashable {
    
    typealias Row = T
    var rows: [Row] = []
    var view: UIView
    
    init(view: UIView) {
        self.view = view
    }
    
    func get(identifier: String) -> T? {
        return rows.first(where: { $0.identifier == identifier })
    }
    
    func add(row: T) {
        guard !rows.contains(where: { $0 == row }) else { return }
        rows.append(row)
    }
    
    func remove(row: T) {
        rows.removeAll(where: { $0 == row })
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(rows.hashValue)
        hasher.combine(view.hashValue)
    }
    
    static func == (lhs: ContentSection<T>, rhs: ContentSection<T>) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
