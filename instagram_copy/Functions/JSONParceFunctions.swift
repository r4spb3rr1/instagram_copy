//
//  JSONParceFunctions.swift
//  instagram_copy
//
//  Created by magzhan on 03.07.2025.
//

import Foundation

func getFileURL() -> URL {
    let fileManager = FileManager.default
    let docs = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
    return docs.appendingPathComponent("users.json")
}


