//
//  PageInfo.swift
//  Rick&MortyApp
//
//  Created by Andrei Goncharov on 11.01.2023.
//

import Foundation

struct PageInfo: Decodable {
    let itemCount: Int
    let pageCount: Int
    let nextPageURL: String?
    let previousPageURL: String?
    
    enum CodingKeys: String, CodingKey {
        case itemCount = "count"
        case pageCount = "pages"
        case nextPageURL = "next"
        case previousPageURL = "prev"
    }
}
