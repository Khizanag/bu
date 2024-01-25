//
//  Item.swift
//  Bu
//
//  Created by Giga Khizanishvili on 25.01.24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
