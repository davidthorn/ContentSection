//
//  ContentRow.swift
//  ContentSection
//
//  Created by David Thorn on 20.10.19.
//  Copyright © 2019 David Thorn. All rights reserved.
//

import Foundation

struct ContentRow<T: UIView>: CardContentRowProtocol, Hashable {
    var identifier: String
    typealias View = T
    func render() -> View {
        return T()
    }
}
