//
//  NetworkServiceProtocol.swift
//  Rick&MortyApp
//
//  Created by Andrei Goncharov on 11.01.2023.
//

import Foundation
import Combine

protocol NetworkServiceProtocol: AnyObject {
    var customDecoder: JSONDecoder { get }
    
    func fetch<T: NetworkRequestProtocol>(_ request: T) async throws -> T.ResponseType
}
