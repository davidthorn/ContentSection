//
//  CardContentSectionProtocol.swift
//  ContentSection
//
//  Created by David Thorn on 20.10.19.
//  Copyright © 2019 David Thorn. All rights reserved.
//

import Foundation

protocol CardContentSectionProtocol {
    associatedtype Row = CardContentRowProtocol
    var rows: [Row] { get }
    var view: UIView { get }
    func add(row: Row)
    func remove(row: Row)
    func get(identifier: String) -> Row?
    
}
