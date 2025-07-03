//
//  StringPair.swift
//  instagram_copy
//
//  Created by magzhan on 03.07.2025.
//

import Foundation

struct StringPair: Hashable {
    let key: String
    let value: String
    init(stringPair: StringPair) {
        self.key = stringPair.key
        self.value = stringPair.value
    }
    init(key: String, value: String)
    {
        self.key = key
        self.value = value
    }
}
