//
//  NetworkRequestProtocol.swift
//  Rick&MortyApp
//
//  Created by Andrei Goncharov on 11.01.2023.
//

import Foundation

protocol NetworkRequestProtocol {
    associatedtype ResponseType: Decodable
    
    var endpoint: Endpoint { get }
    var method: HTTPMethod { get }
}
