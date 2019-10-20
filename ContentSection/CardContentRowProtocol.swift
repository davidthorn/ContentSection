//
//  CardContentRowProtocol.swift
//  ContentSection
//
//  Created by David Thorn on 20.10.19.
//  Copyright © 2019 David Thorn. All rights reserved.
//

import Foundation

protocol CardContentRowProtocol {
    var identifier: String { get }
    associatedtype View: Updatable & Hashable
    func render() -> View
}
