//
//  CardContentProtocol.swift
//  ContentSection
//
//  Created by David Thorn on 20.10.19.
//  Copyright © 2019 David Thorn. All rights reserved.
//

import Foundation

protocol CardContentProtocol {
    associatedtype CardContentSection = CardContentSectionProtocol
    var sections: [CardContentSection] { get }
    func add(section: CardContentSection)
    func remove(section: CardContentSection)
}
