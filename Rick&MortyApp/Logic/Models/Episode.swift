//
//  Episode.swift
//  Rick&MortyApp
//
//  Created by Andrei Goncharov on 11.01.2023.
//

import Foundation

struct Episode: Decodable, Hashable {
    let uuid = UUID()
    let id: Int
    let name: String
    let airDate: String
    let episodeCode: String
    let createdAt: Date
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case airDate = "air_date"
        case episodeCode = "episode"
        case createdAt = "created"
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(uuid)
    }
    
}
