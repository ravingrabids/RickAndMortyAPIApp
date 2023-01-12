//
//  CustomError.swift
//  Rick&MortyApp
//
//  Created by Andrei Goncharov on 11.01.2023.
//

import Foundation
import UIKit

enum CustomError: String, Error {
    case dataIsNil = "No data"
}

enum HTTPMethod: String {
    case GET = "GET"
    case POST = "POST"
    case PUT = "PUT"
    case DELETE = "DELETE"
}

enum SFSymbols {
    static let locationsSymbol = UIImage(systemName: "globe")
    static let charactersSymbol = UIImage(systemName: "person.3")
    static let episodesSymbol = UIImage(systemName: "tv")
    static let characterFilterSymbol = UIImage(systemName: "line.horizontal.3.decrease.circle")
    static let statusSymbol = UIImage(systemName: "circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 8, weight: .regular, scale: .default))
}

enum ScreenSize {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let maxLength = max(ScreenSize.width, ScreenSize.height)
    static let minLength = min(ScreenSize.width, ScreenSize.height)
}
