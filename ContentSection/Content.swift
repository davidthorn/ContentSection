//
//  Content.swift
//  ContentSection
//
//  Created by David Thorn on 20.10.19.
//  Copyright © 2019 David Thorn. All rights reserved.
//

import Foundation

class Content<T: Hashable & CardContentSectionProtocol>: CardContentProtocol {
    typealias CardContentSection = T
    var sections: [CardContentSection] = []
    func add(section: T) {
        guard !sections.contains(where: { $0.hashValue == section.hashValue }) else { return }
        sections.append(section)
    }
    func remove(section: T) {
        sections.removeAll(where: { $0 == section })
    }
}
