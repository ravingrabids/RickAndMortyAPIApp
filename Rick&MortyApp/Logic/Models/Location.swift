//
//  Location.swift
//  Rick&MortyApp
//
//  Created by Andrei Goncharov on 11.01.2023.
//

import Foundation

struct Location: Decodable, Hashable  {
    let uuid = UUID()
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let created: Date
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case type = "type"
        case dimension = "dimension"
        case created = "created"
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(uuid)
    }
}
