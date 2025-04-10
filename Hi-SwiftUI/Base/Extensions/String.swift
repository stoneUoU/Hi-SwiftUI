//
//  String.swift
//  Hi-SwiftUI
//
//  Created by stone on 2025/4/10.
//
import Foundation
import SwiftUI

extension String: @retroactive Identifiable {
    public typealias ID = Int
    public var id: ID {
        return hashValue
    }
}

extension Int: @retroactive Identifiable {
    public typealias ID = Int
    public var id: ID {
        return self
    }
}

@available(iOS 13,*)
extension Array: @retroactive Identifiable where Element: Identifiable {
    public typealias ID = Int
    public var id: Int {
        var hasher = Hasher()
        forEach { hasher.combine($0.id) }
        return hasher.finalize()
    }
}

